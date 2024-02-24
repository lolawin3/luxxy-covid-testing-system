from flask import Flask, redirect, url_for, render_template, request, flash
from models import db, Record
from forms import RecordForm
import os
from werkzeug.utils import secure_filename

from helpers import upload_file, generate_unique_filename, allowed_file, create_presigned_url

from config import AWS_BUCKET, DB_HOST_NAME, DB_USER, DB_PASSWORD, DB_NAME, DB_PORT

# Flask
app = Flask(__name__)
app.config['SECRET_KEY'] = os.urandom(32)
app.config['DEBUG'] = False


app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://{}:{}@{}:{}/{}'.format(DB_USER,DB_PASSWORD,DB_HOST_NAME,DB_PORT,DB_NAME)
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

db.init_app(app)


@app.route("/")
def index():
    '''
    Home page
    '''
    #return redirect(url_for('records'))
    return render_template('web/home.html')


@app.route("/new_record", methods=('GET', 'POST'))
def new_record():
    '''
    Create new record
    '''
    form = RecordForm()
    if form.validate_on_submit():
        my_record = Record()
        form.populate_obj(my_record)

        file_to_upload = request.files['pdf']
        final_file_name = generate_unique_filename(my_record.guest_name)
        my_record.pdf = final_file_name

        db.session.add(my_record)


        if not file_to_upload:
            flash('File not selected.','danger')
            return render_template('web/new_record.html', form=form)
        
        if file_to_upload and not allowed_file(file_to_upload.filename):
            flash('Invalid file format. Only PDFs allowed.','warning')
            return render_template('web/new_record.html', form=form)


        try:
            filename = secure_filename(file_to_upload.filename)
            file_to_upload.save(filename)
            upload_file(filename,AWS_BUCKET,final_file_name)
            os.remove(filename)
            db.session.commit()
            # User info
            flash('Record addeed successfully.', 'success')
            return redirect(url_for('records'))
        except Exception as error:
            print(error)
            db.session.rollback()
            flash('Error while trying to add record.', 'danger')

    return render_template('web/new_record.html', form=form)


@app.route("/edit_record/<id>", methods=('GET', 'POST'))
def edit_record(id):
    '''
    Edit record

    :param id: Id from record
    '''
    my_record = Record.query.filter_by(id=id).first()
    form = RecordForm(obj=my_record)



    if form.validate_on_submit():
        try:
            # Update record

            if not form.pdf.data:
                form.pdf.data = my_record.pdf
                form.populate_obj(my_record)
            else:
                file_to_upload = request.files['pdf']

                if file_to_upload and not allowed_file(file_to_upload.filename):
                    flash('Invalid file format. Only PDFs allowed.','warning')
                    return render_template('web/new_record.html', form=form)
                
                final_file_name = generate_unique_filename(my_record.guest_name)
                filename = secure_filename(file_to_upload.filename)
                file_to_upload.save(filename)
                upload_file(filename,AWS_BUCKET,final_file_name)
                os.remove(filename)

                form.populate_obj(my_record)
                my_record.pdf = final_file_name

            db.session.add(my_record)
            db.session.commit()

            # User info
            flash('Updated sucessfully.', 'success')
        except Exception as error:
            print(error)
            db.session.rollback()
            flash('Error while updating.', 'danger')
    return render_template(
        'web/edit_record.html',
        form=form)


@app.route("/records")
def records():
    '''
    Show alls records
    '''
    records = Record.query.order_by(Record.guest_name).all()
    return render_template('web/records.html', records=records)


@app.route("/search")
def search():
    '''
    Search
    '''
    name_search = request.args.get('name')
    all_records = Record.query.filter(
        Record.guest_name.contains(name_search)
        ).order_by(Record.guest_name).all()
    return render_template('web/records.html', records=all_records)


@app.route("/records/delete", methods=('POST',))
def records_delete():
    '''
    Delete record
    '''
    try:
        record = Record.query.filter_by(id=request.form['id']).first()
        db.session.delete(record)
        db.session.commit()
        flash('Deleted successfully.', 'danger')
    except:
        db.session.rollback()
        flash('Error while deleting.', 'danger')

    return redirect(url_for('records'))

@app.route("/records/pdf/<id>", methods=('GET',))
def records_pdf(id):
    '''
    View signed form

    :param id: Id from pdf
    '''
    my_record = Record.query.filter_by(id=id).first()
    pdf_form_pre_signed_url = create_presigned_url(AWS_BUCKET,my_record.pdf)

    return redirect(pdf_form_pre_signed_url)


if __name__ == "__main__":
    app.run(host="0.0.0.0")
