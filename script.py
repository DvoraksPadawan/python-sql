import mysql.connector
import os

password = os.getenv("SQL_PASSWORD")
print(password)

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password=password
)

mycursor = mydb.cursor()

mycursor.execute("USE mydatabase")

mycursor.execute("SELECT * FROM users")

for x in mycursor:
  print(x)

#query = "INSERT INTO bankaccounts (user_id, user_name, bank_account_number, bank) VALUES (1, 'Dan', '13515/5555', 5555)"
#query = "DELETE FROM bankaccounts WHERE bank_account_id = 5"
#mycursor.execute(query)

#mydb.commit()

mycursor.execute("SELECT * FROM bankaccounts")

for x in mycursor:
  print(x)