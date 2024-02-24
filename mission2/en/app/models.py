from flask import Flask
from flask_sqlalchemy import SQLAlchemy
import os

# Database Info

DB_HOST_NAME = os.environ.get('DB_HOST_NAME')
DB_USER = os.environ.get('DB_USER')
DB_PASSWORD = os.environ.get('DB_PASSWORD')
DB_NAME = os.environ.get('DB_NAME')
DB_PORT = os.environ.get('DB_PORT')


app = Flask(__name__)

app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://{}:{}@{}:{}/{}'.format(DB_USER,DB_PASSWORD,DB_HOST_NAME,DB_PORT,DB_NAME)
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

db = SQLAlchemy(app)

class Record(db.Model):

    __tablename__ = 'records'

    id = db.Column(db.Integer, primary_key=True)
    guest_name = db.Column(db.String(200), nullable=False)
    home_country = db.Column(db.String(200), nullable=True)
    testing_type = db.Column(db.String(200), nullable=True, unique=False)
    testing_result = db.Column(db.String(200), nullable=True, unique=False)
    pdf = db.Column(db.String(200), nullable=True, unique=False)

    def __repr__(self):
        return '<Records %r>' % self.name
