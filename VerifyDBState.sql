--Check which users have access to the database by displaying the USER_ID, USERNAME, CREATED, and PASSWORD_CHANGE_DATE from the USER_USERS table
SELECT user_id, username, created, password_change_date FROM user_users;

--Check what tables are present in the database by displaying everything in USER_TABLES
SELECT * FROM user_tables;

--Examine the design of each table by running the DESCRIBE command
DESCRIBE orders;
DESCRIBE productlist;
DESCRIBE reviews;
DESCRIBE storefront;
DESCRIBE userbase;
DESCRIBE userlibrary;

--Display all data currently present in the database
SELECT * FROM orders;
SELECT * FROM productlist;
SELECT * FROM reviews;
SELECT * FROM storefront;
SELECT * FROM userbase;
SELECT * FROM userlibrary;

--Check what constraints are present in the database by displaying the TABLE_NAME, CONSTRAINT_NAME, CONSTRAINT_TYPE, and STATUS from the USER_CONSTRAINTS table
SELECT table_name, constraint_name, constraint_type, status FROM user_constraints;

--heck what views are present in the database by displaying the VIEW_NAME and TEXT columns in the USER_VIEWS table
SELECT view_name, text FROM user_views;

--Display every USERNAME in alphabetical order
SELECT username FROM userbase ORDER BY username;

--Display the FIRSTNAME, LASTNAME, USERNAME, PASSWORD, and EMAIL of any user who has a yahoo email address
SELECT firstname, lastname, username, email FROM userbase WHERE email like '%@yahoo.com';

--Display the USERNAME, BIRTHDAY, and WALLETFUNDS of any user who has less than $25 in funds
SELECT username, birthday, walletfunds FROM userbase WHERE walletfunds < 25;

--Display the USERID and PRODUCTCODE of any user who has more than 100 HOURSPLAYED.
SELECT userid, productcode FROM userlibrary WHERE hoursplayed > 100;

--Display the PRODUCTCODE of any game that has less than 10 HOURSPLAYED
SELECT productcode FROM userlibrary WHERE hoursplayed < 10;

--Display every unique PUBLISHER
SELECT DISTINCT publisher FROM productlist;

--Display the PRODUCTNAME, RELEASEDATE, PUBLISHER, and GENRE of all products, sorted by GENRE
SELECT productname, releasedate, publisher, genre FROM productlist ORDER BY genre;

--Display the PRODUCTCODE and PUBLISHER of any product in the ‘Strategy’ GENRE
SELECT productcode, publisher FROM productlist WHERE genre = 'Strategy';

--Display the PRODUCTCODE, DESCRIPTION, and PRICE for any product that costs more than $25, sorted by descending PRICE
SELECT productcode, description, price FROM storefront WHERE price > 25 ORDER BY price DESC;

--Display the INVENTORYID and PRICE of all products in the STOREFRONT table, sorted by ascending PRICE.
SELECT inventoryid, price FROM storefront ORDER BY price ASC;

--Display the PRODUCTCODE and REVIEW of any product with a RATING of 1
SELECT productcode, review FROM reviews WHERE rating = 1;

--Display the PRODUCTCODE and REVIEW of any product with a RATING of 4 or higher
SELECT productcode, review FROM reviews WHERE rating >= 4;

--Display every unique USERID from users who have placed an order
SELECT DISTINCT userid FROM orders;

--Display all order data, sorted by the earliest PURCHASEDATE.
SELECT * FROM orders ORDER BY purchasedate ASC;