from flask_wtf import FlaskForm
from wtforms import StringField, SelectField
from flask_wtf.file import FileField
from wtforms.validators import DataRequired, Length


class RecordForm(FlaskForm):
    guest_name = StringField('Nome do Hóspede', validators=[DataRequired(), Length(min=-1, max=200, message='Field should not have more than 200 characters.')])
    home_country = StringField('País de Origem', validators=[DataRequired(), Length(min=-1, max=200, message='Field should not have more than 200 characters.')])
    testing_type = StringField('Tipo de Teste', validators=[DataRequired(), Length(min=-1, max=200, message='Field should not have more than 100 characters.')])
    testing_result = StringField('Resultado do Teste', validators=[DataRequired(), Length(min=-1, max=200, message='Field should not have more than 200 characters.')])
    pdf = FileField('Resultado Escaneado (PDF)')
    