import mysql.connector
conn=mysql.connector.connect(host="localhost",
                             user="root",
                             password="computer",
                             database="Snoshi")
cur=conn.cursor()
cur.execute("CREATE TABLE Movies(
    Movie_name VARCHAR(100),
    Lead_actor VARCHAR(50),
    Lead_actress VARCHAR(50),
    Year_of_release DATE,
    Director_name VARCHAR(50)
)")
q="insert into MOVIES(Movie_name,Lead_actor,Lead_actress, Year_of_release DATE, Director_name)values(%s,%s,%s,%s,%s)"
v=[('A','Mahesh','Kajal','2000-12-01','puri'),('B','Ram','Sam','2005-01-01','ABC'),('C','NTR','Alia','2022-12-12','Raja'),('D','Chiranjeevi','Ramya','2010-05-06','Ravi'),('E','Bala Krishna','Pragya','2022-01-03','Kiran')]
try:
    cur.executemany(q,v)
    conn.comit()
except:
    conn.rollback()
conn.close()
