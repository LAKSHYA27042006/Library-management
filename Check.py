import mysql.connector as mysql

con=mysql.connect(host="localhost", user='root', password=mypass, database=mydatabase)
print(con.is_connected())
