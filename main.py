from flask import Flask, render_template,request,redirect,url_for,flash,Data,db,mysql,_name_
from flask_mysqldb import MySQL
app= Flask(_name_)
app.config['MYSQL_HOST']='localhost'
app.config['MYSQL_USER']='root'
app.config['MYSQL_PASSWORD']=''
app.config['MYSQL_DB']='sign_up'

mysql=MySQL(app)


@app.route('/insert',methods=['POST'])
def insert():

    if request.method=='POST':

        FIRST_NAME=request.form['first_name']
        LAST_NAME=request.form['last_name']
        EMAIL=request.form['email']
        PHONE_NUMBER=request.form['phone_number']
        USERNAME=request.form['username']
        PASSWORD=request.form['password']

        cur=mysql.connection.cursor()
        cur.execute("INSERT INTO sign_ups(FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,USERNAME,PASSWORD)VALUES()%s, %s",(FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,USERNAME,PASSWORD))
        mysql.connection.commit()
        cur.close()

        flash("Inserted Successfully")
        return render_template("mainly.html")

@app.route('/update',methods=['GET','POST'])
def update():
    if request.method=='POST':
        my_data=Data.query.get(request.form.get('id')) 

        my_data.first_name=request.form['FIRST_NAME']
        my_data.last_name=request.form['LAST_NAME']      
        my_data.email=request.form['EMAIL']      
        my_data.phone_number=request.form['PHONE_NUMBER']      
        my_data.username=request.form['USERNAME']      
        my_data.password=request.form['PASSWORD']

        db.session.commit()
        flash("Updated Successfully")      
       
    return render_template("mainly.html")




@app.route("/home")
@app.route("/")
def home():
    return render_template("home.html")

@app.route("/inventory")
@app.route("/")
def home():
    return render_template("inventory.html")

@app.route("/mainly")
@app.route("/")
def mainly():
    return render_template("mainly.html")

    




@app.route("/products")
@app.route("/")
def mainly():
    return render_template("products.html")

@app.route("/cart")
@app.route("/")
def mainly():
    return render_template("cart.html")

@app.route("/services")
@app.route("/")
def mainly():
    return render_template("services.html")

@app.route("/about")
@app.route("/")
def mainly():
    return render_template("about.html")

@app.route("/stores")
@app.route("/")
def mainly():
    return render_template("stores.html")

@app.route("/login")
@app.route("/")
def login():
    
    return render_template("login.html")

@app.route("/sign up")
@app.route("/")
def mainly():
    return render_template("sign up.html")

@app.route("/adminlogin")
@app.route("/")
def mainly():
    return render_template("adminlogin.html")

@app.route("/admin")
@app.route("/")
def mainly():
    return render_template("admin.html")

@app.route("/contacts")
@app.route("/")
def contacts():
    return render_template("contacts.html")

if __name__ == "__main__":
    db.create_all()
    app.run(debug=True)