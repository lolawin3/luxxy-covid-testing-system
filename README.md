# luxxy-covid-testing-system
This repository contains files for a hands-on project to migrating a traditional monolithic application on-premises environment(VM &amp; MySQL) to the cloud using both AWS (S3) and Google Cloud (Google Container Registry, Google Kubernetes Engine and Google Cloud SQL), using DevOps ecosystem tools (Terraform for infrastructure).

**Project Background:**

During the COVID-19 pandemic, the hotel's general manager tasked the IT team with developing an application to consolidate all guests' COVID test results in a single repository. This initiative aimed to ensure guests could demonstrate they were virus-free before check-in, enhancing safety measures. Originally hosted on-premises, the application needed to scale due to increased guest traffic and data volume, prompting the migration to a cloud-based solution for improved scalability, agility, and cost efficiency.

**Cloud Solution Overview:**

The migration involved refactoring the application for containerization, followed by deployment on Docker Engine with Google Kubernetes Engine (GKE) for container orchestration. Container images were stored in Google Container Registry, leveraging the existing partnership with Google. Data migration from an on-premises MySQL database to Google Cloud SQL (MySQL) was conducted to harness cloud benefits. Furthermore, instead of using block storage for the PDF COVID-19 test results as done previously on-premises, we opted for AWS S3 storage to achieve higher durability and availability, with costs decreasing as data volume increased. The architecture also facilitated cross-platform communication between AWS and GCP networks.

You can take a look at the projects subdirectory for the codes:
1. [Using terraform for infrastructure deployment] (https://github.com/lolawin3/luxxy-covid-testing-system/tree/544d2e6cb601a2af4744ea37924cdc4578b95000/1.%20Infrastructure%20deployment)
2. [Application code and kubernetes settings] (https://github.com/lolawin3/luxxy-covid-testing-system/tree/544d2e6cb601a2af4744ea37924cdc4578b95000/2.%20application%20deployment)
3. [Sample covid result data stored in AWS S3] (https://github.com/lolawin3/luxxy-covid-testing-system/tree/544d2e6cb601a2af4744ea37924cdc4578b95000/3.%20data%20deployment)

![Luxxy](https://github.com/lolawin3/luxxy-covid-testing-system/assets/29721608/4d09faea-81f9-4b98-94a0-bba41dce29f9)
