# BUS243
Facebook Database mini project
https://docs.google.com/spreadsheets/d/12ByTlDCkfIcLcwjDnqBEX111kOFukkwqFPVU5dE9KHQ/edit?usp=sharing

Follow the steps below to create a mongodump from the server and import it another server/local machine which has a username and a password

1. mongodump -d dbname -o dumpname -u username -p password
2. scp -r user@remote:~/location/of/dumpname ./
3. mongorestore -d dbname dumpname/dbname/ -u username -p password