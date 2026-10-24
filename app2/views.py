from django.shortcuts import render, redirect
from django.contrib import messages
import mysql.connector
import datetime
from django.http import HttpResponse
# Create your views here.
def signup(request):
    return render(request,'login.html')
def register(request):
    s1 = request.POST["uname"]
    s2 = request.POST["uemail"]
    s3 = request.POST["upass"]
    s4 = request.POST["mobile"]
    mydb = mysql.connector.connect(
        user="root",
        password="",
        host="localhost",
        database="epa",
        charset="utf8"
    )
    mycur=mydb.cursor()
    mycur.execute("insert into usermast (uname,uemail,upass,mobile) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"')")
    mydb.commit()
    return render(request,'login.html')

def signin(request):
    return render(request,'login.html')
def login(request):
    s1 = request.POST["uemail"]
    s2 = request.POST["upass"]
    mydb=mysql.connector.connect(
        user="root",
        password="",
        host="localhost",
        database="epa",
        charset="utf8"
    )
    mycur=mydb.cursor()
    mycur.execute("select * from usermast where uemail='"+s1+"' and upass='"+s2+"'")
    mydata=mycur.fetchone()
    if mydata is None:
        messages.error(request,"Invalid UserEmail  and Password")
        return render(request,'login.html')
    else:
        mycur1 = mydb.cursor()
        mycur1.execute("select * from history where uid='"+s1+"'")
        mydata1=mycur1.fetchall()
        uname = mydata[1]
        request.session["uemail"]=s1
        request.session["uname"]=uname
        return render(request,'success.html',{"uemail":request.session["uemail"],"uname": request.session["uname"],"hist":mydata1})
        # request.session["uname"] = mydata[1]
        # request.session["uemail"] = mydata[2]
        # return render(request, 'success.html', {"uname": request.session["uname"], "uemail": request.session["uemail"]})



# def searchevent(request):
#     s1 = request.POST["ename"]
#     s4 = request.POST["capacity"]
#     s5 = request.POST["elocation"]
#     uname = request.POST["uname"]
#     dt=datetime.datetime.now()
#
#     mydb = mysql.connector.connect(
#         user="root",
#         password="",
#         host="localhost",
#         database="epa",
#         charset="utf8"
#     )
#     mycur = mydb.cursor()
#     # mycur1 = mydb.cursor()
#     # mycur1.execute("insert into history (trdate,uid,sename,noofp,budject) values('"+str(dt)+"','"+uname+"','"+str(s1)+"','"+str(s4)+"','"+str(s6)+"')")
#     # mydb.commit()
#
#     query = "SELECT * FROM event WHERE 1=1"
#     params = []
#
#     if s1:
#         query += " AND ename = %s"
#         params.append(s1)
#
#     if s4:
#         query += " AND capacity = %s"
#         params.append(s4)
#
#     if s5:
#         query += " AND elocation = %s"
#         params.append(s5)
#
#     # Execute the query with the dynamic parameters
#     mycur.execute(query, tuple(params))
#     mydata = mycur.fetchall()
#
#     if not mydata:
#         messages.error(request, "Event Data Is Not Found")
#         return render(request, 'searchevent.html')
#     else:
#         mycur1 = mydb.cursor()
#         mycur1.execute("insert into history (trdate,uid,sename,noofp,location) values('" + str(dt) + "','" + uname + "','" + str(s1) + "','" + str(s4) + "','" + str(s5) + "')")
#         mydb.commit()
#         return render(request, 'searchevent.html', {"mydata": mydata})


# def searchevent(request):
#     s1 = request.POST.get("ename", "")  # Default to an empty string if 'ename' is not present
#     s4 = request.POST.get("capacity", "")
#     s5 = request.POST.get("elocation", "")
#     uname = request.POST.get("uname", "")
#     dt = datetime.datetime.now()
#
#     # Database connection
#     mydb = mysql.connector.connect(
#         user="root",
#         password="",
#         host="localhost",
#         database="epa",
#         charset="utf8"
#     )
#     mycur = mydb.cursor()
#
#     # Check if only one field is provided
#     if (s1 and not s4 and not s5) or (not s1 and s4 and not s5) or (not s1 and not s4 and s5):
#         messages.error(request, "Please provide more search criteria. Do not search with a single field.")
#         return render(request, 'searchevent.html')
#
#     # Base query
#     query = "SELECT * FROM event WHERE 1=1"
#
#     if s1:
#         query += " AND ename = '" + s1 + "'"
#
#     if s4:
#         query += " AND capacity = '" + s4 + "'"
#
#     if s5:
#         query += " AND elocation = '" + s5 + "'"
#
#     # Execute the query with the dynamically built string
#     mycur.execute(query)
#     mydata = mycur.fetchall()
#
#     if not mydata:
#         messages.error(request, "Event Data Is Not Found")
#         return render(request, 'searchevent.html')
#     else:
#         # Record the search in history
#         mycur1 = mydb.cursor()
#         mycur1.execute(
#             "INSERT INTO history (trdate, uid, sename, noofp, location) VALUES ('" + str(
#                 dt) + "', '" + uname + "', '" + str(s1) + "', '" + str(s4) + "', '" + str(s5) + "')"
#         )
#         mydb.commit()
#
#         return render(request, 'searchevent.html', {"mydata": mydata})

def searchevent(request):
    s6=request.session["uemail"]
    s1 = request.POST.get("ename", "")
    s4 = request.POST.get("capacity", "")
    s5 = request.POST.get("elocation", "")
    uname = request.POST.get("uname", "")
    dt = datetime.datetime.now()  # Current Date and Time

    # Database connection
    mydb = mysql.connector.connect(
        user="root",
        password="",
        host="localhost",
        database="epa",
        charset="utf8"
    )
    mycur = mydb.cursor()


    query = "SELECT * FROM event WHERE 1=1"

    # Add conditions to the query if any field is filled
    if s1:
        query += " AND ename LIKE '%" + s1 + "%'"  # Allow partial match for event name

    if s4:
        query += " AND capacity = '" + s4 + "'"

    if s5:
        query += " AND elocation LIKE '%" + s5 + "%'"  # Allow partial match for location


    mycur.execute(query)
    mydata = mycur.fetchall()

    # If no results are found
    if not mydata:
        messages.error(request, "No matching events found.")
        return render(request, 'searchevent.html')


    else:
        # request.session["uname"] = uname
        return render(request, 'searchevent.html', {"s6":s6,"uname": request.session["uname"],"mydata": mydata})

def edetails(request):
    s6 = request.session["uemail"]
    s1 = request.POST["eid"]
    
    mydb = mysql.connector.connect(
        user="root",
        password="",
        host="localhost",
        database="epa",
        charset="utf8"
    )
    cursor = mydb.cursor()
    
    query = "SELECT eid, ename, etype, edata, capacity, elocation, price, eimage FROM event WHERE eid='" + str(s1) + "'"
    cursor.execute(query)
    mydata = cursor.fetchone()
    mydb.close()
    
    return render(request, 'edetails.html', {
        "data": mydata,
        "uemail": s6,
        "mydata": [s1]
    })

def bookingform(request):
    if request.method == 'POST':
        eid = request.POST.get("eid")
        uemail = request.POST.get("uemail")
        
        mydb = mysql.connector.connect(
            user="root",
            password="",
            host="localhost",
            database="epa",
            charset="utf8"
        )
        cursor = mydb.cursor()
        
        query = "SELECT eid, ename, etype, edata, capacity, elocation, price, eimage FROM event WHERE eid='" + str(eid) + "'"
        cursor.execute(query)
        mydata = cursor.fetchone()
        mydb.close()
        
        return render(request, 'bookingform.html', {
            "data": mydata,
            "uemail": uemail,
            "mydata": [eid]
        })
    
    return redirect('edetails')

def process_booking(request):
    if request.method == 'POST':
        email = request.POST.get('uemail')
        eid = request.POST.get('eid')
        event_date = request.POST.get('eventDate')
        card_number = request.POST.get('cardNumber')
        total_price = request.POST.get('price')
        event_type = request.POST.get('etype')
        dt = datetime.datetime.now()

        mydb = mysql.connector.connect(
            user="root",
            password="",
            host="localhost",
            database="epa",
            charset="utf8"
        )
        mycursor = mydb.cursor()

        # Get user ID
        mycursor.execute("SELECT uid FROM usermast WHERE uemail='" + email + "'")
        user_result = mycursor.fetchone()
        uid = user_result[0]

        # Get event details
        mycursor.execute("SELECT ename, etype, elocation, capacity FROM event WHERE eid='" + str(eid) + "'")
        event_result = mycursor.fetchone()
        event_name = event_result[0]
        event_type = event_result[1]
        event_location = event_result[2]
        event_capacity = event_result[3]

        # Insert booking
        insert_query = "INSERT INTO event_bookings (uid, eid, event_date, card_number, total_price, booking_date) VALUES ('" + \
            str(uid) + "', '" + str(eid) + "', '" + str(event_date) + "', '" + \
            str(card_number) + "', '" + str(total_price) + "', '" + str(dt) + "')"
        
        mycursor.execute(insert_query)
        booking_id = mycursor.lastrowid
        mydb.commit()

        # Get booking amount from event_bookings
        mycursor.execute("SELECT total_price FROM event_bookings WHERE booking_id='" + str(booking_id) + "'")
        booking_amount = mycursor.fetchone()[0]

        # Insert into history
        history_query = "INSERT INTO history (trdate, uid, sename, noofp, location) VALUES ('" + \
            str(dt) + "', '" + str(email) + "', '" + str(event_type) + "', '" + str(event_capacity) + "', '" + str(event_location) + "')"
        mycursor.execute(history_query)
        mydb.commit()
        
        mydb.close()

        return render(request, 'booking_success.html', {
            'booking_id': booking_id,
            'email': email,
            'event_date': event_date,
            'total_price': booking_amount,
            'event_name': event_name,
            'event_type': event_type,
            'event_location': event_location
        })

    return redirect('edetails')



