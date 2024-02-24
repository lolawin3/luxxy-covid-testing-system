from flask_wtf import FlaskForm
from wtforms import StringField, SelectField
from flask_wtf.file import FileField
from wtforms.validators import DataRequired, Length


class RecordForm(FlaskForm):
    guest_name = StringField('Guest Name', validators=[DataRequired(), Length(min=-1, max=200, message='Field should not have more than 200 characters.')])
    home_country = StringField('Home Country', validators=[DataRequired(), Length(min=-1, max=200, message='Field should not have more than 200 characters.')])
    testing_type = StringField('Testing Type', validators=[DataRequired(), Length(min=-1, max=200, message='Field should not have more than 100 characters.')])
    testing_result = StringField('Testing Result', validators=[DataRequired(), Length(min=-1, max=200, message='Field should not have more than 200 characters.')])
    pdf = FileField('Scanned Result (PDF)')
    