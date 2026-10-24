from django.shortcuts import render, redirect
from django.shortcuts import render
from django.http import HttpResponse
from django.core.files.storage import FileSystemStorage
from django.contrib import messages
import mysql.connector
# Create your views here.
def home(request):
    return render(request,'index.html')

def useradmin(request):
    return render(request,'adminlogin.html')



def login(request):
    if request.method == 'POST':

        s1 = request.POST['aname']
        s2 = request.POST['apass']

        if s1 == "admin" and s2 == "admin":
            return render(request, 'dashboard.html')
        else:
            return render(request, 'adminlogin.html')

    return render(request, 'adminlogin.html')

def addinfo(request):
    return render(request,'dashboard.html')

def addinfo(request):
    s1 = request.POST["ename"]
    s2 = request.POST["etype"]
    s3 = request.POST["edata"]
    s4 = request.POST["capacity"]
    s5 = request.POST["elocation"]
    s6 = request.POST["price"]
    s7 = request.FILES["eimage"]
    mydb=mysql.connector.connect(
    user="root",
    host="localhost",
    password="",
    database="epa",
    charset="utf8"
    )
    mycur = mydb.cursor()
    fs=FileSystemStorage()
    filename=fs.save('static/images/'+str(s7),s7)
    upurl=fs.url(filename)
    mycur.execute("insert into event(ename,etype,edata,capacity,elocation,price,eimage) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+str(s7)+"')")
    mydb.commit()
    return render(request,'dashboard.html',{"filename":upurl})


def eventregister(request):

    # Establishing connection to the database
    mydb = mysql.connector.connect(
        user="root",
        host='localhost',
        password="",
        database="epa",
        charset="utf8"
    )
    cursor = mydb.cursor()


    query = "SELECT * FROM event"
    cursor.execute(query)

    # Fetching all data
    mydata = cursor.fetchall()


    return render(request, 'eventregister.html', {'data': mydata})


def search(request):
    return render(request,'events.html')

def search(request):
    s1 = request.POST["ename"]
    mydb=mysql.connector.connect(
        user="root",
        password="",
        host="localhost",
        database="epa",
        charset="utf8"
    )
    mycur=mydb.cursor()
    mycur.execute("select * from event where ename='"+str(s1)+"'")
    mydata=mycur.fetchall()
    if mydata is None:
        messages.error(request,"Event Data Is Not Found")
        return render(request, 'events.html')
    else:
        return render(request,'events.html',{"mydata":mydata})

# Event Description Section
def edetails(request):
    s1 = request.POST["eid"]
    mydb = mysql.connector.connect(
        user="root",
        host='localhost',
        password="",
        database="epa",
        charset="utf8"
    )
    cursor = mydb.cursor()


    query = "SELECT eid, ename, etype, edata,capacity, elocation, price, eimage FROM event WHERE eid = %s"
    cursor.execute(query, (s1,))

    print('Executing query...')
    mydata = cursor.fetchone()

    # if mydata:
    #     print(mydata)
    # else:
    #     print("No data found for the provided eid.")


    return render(request, 'edetails.html', {"data":mydata})

def bookingform(request):
    return render(request,'index.html')