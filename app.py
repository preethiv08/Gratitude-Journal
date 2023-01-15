import datetime
from flask import Flask, render_template, request
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

app.config['SQLALCHEMY_DATABASE_URI']="postgresql://postgres:preethi2002@localhost/Info"

db=SQLAlchemy(app)

class Info(db.Model):
    __tablename__="Info"
    id=db.Column(db.Integer, primary_key=True)
    content=db.Column(db.String(200))
    date=db.Column(db.DateTime)

    def __init__(self,content,date):
        self.content=content
        self.date=date

@app.route("/", methods=['GET', 'POST'])
def home():

    if request.method=="POST":
        entry_content = request.form.get("content")
        formatted_date = datetime.datetime.today().strftime("%Y-%m-%d")

        information=Info(entry_content,formatted_date)
        db.session.add(information)
        db.session.commit() 
      
    entries_with_date=[
        (
            entry.content,
            entry.date, 
            entry.date.strftime("%b %d")
        ) for entry in db.session.query(Info).all()
        ]
    print(entries_with_date)

    return render_template("home.html", entries = entries_with_date)
    
if __name__=="__main__":
    app.run(debug=True)
