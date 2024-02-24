# Linhas para criar recursos na Google Cloud


# Ensure the Service Networking API is enabled
resource "google_project_service" "service_networking" {
  service = "servicenetworking.googleapis.com"
  disable_on_destroy = false
}

# Define a new VPC Network
resource "google_compute_network" "vpc_network" {
  name                    = "luxxy-vpc-network-pt"
  auto_create_subnetworks = false
}

# Define a Subnetwork in the new VPC
resource "google_compute_subnetwork" "vpc_subnetwork" {
  name          = "luxxy-subnetwork-pt"
  region        = var.gcp_region
  network       = google_compute_network.vpc_network.name
  ip_cidr_range = "10.0.0.0/20"
}

# Configure Service Networking Connection for VPC Peering with Google services
resource "google_compute_global_address" "private_ip_address" {
  name          = "luxxy-private-ip-range-pt"
  purpose       = "VPC_PEERING"
  address_type  = "INTERNAL"
  prefix_length = 16
  network       = google_compute_network.vpc_network.self_link
}

resource "google_service_networking_connection" "private_vpc_connection" {
  network                 = google_compute_network.vpc_network.self_link
  service                 = "servicenetworking.googleapis.com"
  reserved_peering_ranges = [google_compute_global_address.private_ip_address.name]

  depends_on = [google_project_service.service_networking]
}

# Cloud SQL Instance Configuration
resource "google_sql_database_instance" "instance" {
  name             = "luxxy-covid-testing-system-database-instance-pt"
  region           = var.gcp_region
  database_version = "MYSQL_5_7"

  settings {
    tier = "db-f1-micro"

    ip_configuration {
      ipv4_enabled    = true
      private_network = google_compute_network.vpc_network.self_link
      authorized_networks {
        name  = "open-access"
        value = "0.0.0.0/0"
      }
    }
  }

  deletion_protection = false
  depends_on = [google_service_networking_connection.private_vpc_connection]
}

resource "google_sql_database" "database" {
  name     = "dbcovidtesting"
  instance = google_sql_database_instance.instance.name
}

# Google Kubernetes Engine (GKE) Configuration
resource "google_container_cluster" "primary" {
  name               = "luxxy-kubernetes-cluster-pt"
  location           = var.gcp_region
  initial_node_count = 1

  network            = google_compute_network.vpc_network.name
  subnetwork         = google_compute_subnetwork.vpc_subnetwork.name

  enable_autopilot = true

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
    labels = {
      environment = "training"
    }
    tags = ["environment", "training"]
  }

  timeouts {
    create = "30m"
    update = "40m"
  }
  deletion_protection = false
}
