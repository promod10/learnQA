-- CREATE a database where database name is 'foodmandu' --
-- Syntax: CREATE DATABASE database_name;
CREATE DATABASE foodmandu;

/*
DROP command in SQL
-> Drop means we can delete any type of database in any database software but we do not recommended to use DROP command
-> Old database having a lots of data in it so please avoid this type of command in SQL -> this is only for education purpose
-> make sure before drop database you can must be in another database
-> Syntax: DROP DATABASE database_name
*/
DROP DATABASE database_name;

--- ALTER command for DATABASE ---
--- Modifies the attributes of a database, such as its name, owner, or connection limits.

--- database rename ---
ALTER DATABASE database_name RENAME TO new_database_name;


/* Schema in PSQL
-> In PostgreSQL, a schema is a named collection of database objects, including tables, views, indexes, data types, functions, and more. 
It functions as a namespace within a database, providing a way to organize and manage these objects
*/
CREATE SCHEMA clients;
CREATE SCHEMA staffs;

--- CREATE a table and table name is users -----
CREATE TABLE users (
	id INT PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	gender VARCHAR(10),
	address VARCHAR(100),
	mobile INT,
	created_at TIMESTAMP,
	updated_at TIMESTAMP
);


--- OR ------ CREATE TABLE with schema as well then ----
CREATE TABLE clients.users (
	id INT PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	gender VARCHAR(10),
	address VARCHAR(100),
	mobile INT,
	created_at TIMESTAMP,
	updated_at TIMESTAMP
);


--- Insert single data in particular table -----
INSERT INTO users (id, first_name, last_name, email, gender, address, mobile, created_at, updated_at) VALUES 
(1, 'Hillie', 'McAlpine', 'hmcalpine0@typepad.com', 'Male', 'Dr.-Theodor-Neubauer-Straße 44', 7, '12/25/2024', '2/1/2025');

--- or with schema insert single data in table ----
INSERT INTO clients.users (id, first_name, last_name, email, gender, address, mobile, created_at, updated_at) VALUES 
(1, 'Hillie', 'McAlpine', 'hmcalpine0@typepad.com', 'Male', 'Dr.-Theodor-Neubauer-Straße 44', 7, '12/25/2024', '2/1/2025');


 --- Insert Multiple data in particular table -------
INSERT INTO users (id, first_name, last_name, email, gender, address, mobile, created_at, updated_at) VALUES 
(2, 'Menard', 'Burthom', 'mburthom1@theguardian.com', 'Male', 'Pfarrgasse, 5', 6, '10/30/2025', '2/10/2025'),
(3, 'Aryn', 'Dallmann', 'adallmann2@google.co.uk', 'Female', 'Kreisstraße 38', 6, '11/28/2025', '7/10/2025'),
(5, 'Loy', 'Snaith', 'lsnaith4@printfriendly.com', 'Male', 'Marienplatz 9', 2, '3/25/2025', '1/23/2025'),
(4, 'Kayley', 'Pendell', 'kpendell3@ucoz.com', 'Polygender', 'PIAZZA FILIPPO MEDA 4', 5, '1/23/2025', '10/19/2025'),
(6, 'Everett', 'Tatersale', 'etatersale5@google.pl', 'Male', 'PARC DE LA HAUTE BORNE 61 AVENUE HALLEY', 4, '1/4/2025', '2/27/2025'),
(7, 'Aleece', 'Baugh', 'abaugh6@tiny.cc', 'Female', 'P O BOX 158', 2, '5/9/2025', '2/3/2025'),
(8, 'Pam', 'Gunther', 'pgunther7@accuweather.com', 'Female', 'Credit Union Office, Market Square, Castlebar,', 3, '12/31/2024', '5/22/2025'),
(9, 'Standford', 'Bayston', 'sbayston8@dailymotion.com', 'Male', 'P O BOX 1287', 3, '2/19/2025', '11/2/2025'),
(10, 'Killie', 'Macken', 'kmacken9@newsvine.com', 'Male', 'Wielandstraße 22', 10, '12/31/2024', '5/22/2025'),
(11, 'Anne-corinne', 'Barns', 'abarnsa@howstuffworks.com', 'Female', 'MAC N9301-041', 2, '10/25/2025', '9/8/2025'),
(12, 'Gary', 'Germaine', 'ggermaineb@com.com', 'Male', 'Schwanenstraße 17-19', 2, '5/8/2025', '3/13/2025'),
(13, 'Corbet', 'Kleinpeltz', 'ckleinpeltzc@w3.org', 'Male', '11185 FAIRFAX BOULEVARD', 5, '7/19/2025', '10/26/2025'),
(14, 'Rhett', 'Hove', 'rhoved@xing.com', 'Male', 'LOCATER 01-5138', 4, '1/22/2025', '4/25/2025'),
(15, 'Merry', 'Billo', 'mbilloe@nih.gov', 'Female', 'BOX 70', 9, '6/11/2025', '10/14/2025'),
(16, 'Leone', 'Sargeaunt', 'lsargeauntf@jiathis.com', 'Bigender', '12345 W COLFAX AVE', 7, '6/9/2025', '4/13/2025'),
(17, 'Hew', 'Brown', 'hbrowng@fotki.com', 'Agender', 'P O BOX 288', 6, '5/19/2025', '12/28/2024'),
(18, 'Joellyn', 'Aistrop', 'jaistroph@alexa.com', 'Bigender', 'P O BOX 288', 9, '5/30/2025', '10/23/2025'),
(19, 'Eddie', 'Forde', 'efordei@nyu.edu', 'Female', 'P.O. BOX 85139', 2, '10/20/2025', '3/22/2025'),
(20, 'Ryann', 'Pierrepoint', 'rpierrepointj@booking.com', 'Female', 'P7-PFSC-03-H', 9, '9/15/2025', '8/15/2025'),
(21, 'Hugues', 'Hun', 'hhunk@redcross.org', 'Male', '27 Main Street, Dungloe, Donegal Town,', 9, '4/27/2025', '7/18/2025'),
(22, 'Scarlet', 'Fiddyment', 'sfiddymentl@drupal.org', 'Female', 'DATA CONTROL ACH DESK', 3, '2/23/2025', '12/9/2024'),
(23, 'Russ', 'Geraldez', 'rgeraldezm@usa.gov', 'Male', 'Hoveniersstraat, 29', 2, '1/18/2025', '6/18/2025'),
(24, 'Abagael', 'McGreil', 'amcgreiln@msu.edu', 'Female', '2525 GREENBAY ROAD', 5, '9/16/2025', '6/13/2025'),
(25, 'Timothy', 'Wonfar', 'twonfaro@unicef.org', 'Male', '2ND FLOOR', 6, '6/30/2025', '5/2/2025'),
(26, 'Bay', 'Kelby', 'bkelbyp@themeforest.net', 'Male', 'PO BOX 709', 6, '11/14/2025', '3/13/2025'),
(27, 'Octavia', 'Lashmar', 'olashmarq@washingtonpost.com', 'Female', 'SUITE 300', 9, '7/13/2025', '12/31/2024'),
(28, 'Kimbra', 'Ricca', 'kriccar@ihg.com', 'Female', 'ACH OPERATIONS 100-99-04-10', 7, '10/18/2025', '9/3/2025'),
(29, 'Demetris', 'Paske', 'dpaskes@dedecms.com', 'Female', 'Burgstraße 28-30', 9, '3/5/2025', '6/11/2025'),
(30, 'Ancell', 'Hoofe', 'ahoofet@nps.gov', 'Male', '925 WISCONSIN AVENUE', 1, '9/19/2025', '6/22/2025'),
(31, 'Pepi', 'Luckwell', 'pluckwellu@ocn.ne.jp', 'Bigender', 'Palmengartenstraße 5-9', 10, '11/19/2025', '8/15/2025'),
(32, 'Phaidra', 'Gasking', 'pgaskingv@slate.com', 'Female', 'EP-MN-WN1A', 4, '12/27/2024', '8/9/2025'),
(33, 'Sidonia', 'Wrankmore', 'swrankmorew@craigslist.org', 'Female', 'Sandower Straße 6-10', 6, '5/15/2025', '5/17/2025'),
(34, 'Raynell', 'Hadingham', 'rhadinghamx@vkontakte.ru', 'Genderfluid', '1645 ELLINGTON RD', 7, '6/12/2025', '5/13/2025'),
(35, 'Wayland', 'Crippill', 'wcrippilly@constantcontact.com', 'Male', 'Crailsheimer Straße 52', 10, '3/16/2025', '4/4/2025'),
(36, 'Penni', 'Gowdie', 'pgowdiez@imageshack.us', 'Female', 'PIAZZA FILIPPO MEDA 4', 10, '2/23/2025', '12/5/2024'),
(37, 'Edin', 'Edgeler', 'eedgeler10@nbcnews.com', 'Female', 'ul. Puławska 15', 5, '7/31/2025', '1/6/2025'),
(38, 'Waldemar', 'Kettlestring', 'wkettlestring11@yale.edu', 'Male', 'Sparkassenplatz 1', 8, '10/7/2025', '7/18/2025'),
(39, 'Veriee', 'Norcliff', 'vnorcliff12@blogs.com', 'Female', '1200 E WARRENVILLE ROAD', 5, '2/6/2025', '3/6/2025'),
(40, 'Tracee', 'Filipychev', 'tfilipychev13@ocn.ne.jp', 'Female', 'P.O. BOX 85139', 2, '11/22/2025', '4/9/2025'),
(41, 'Nara', 'Mapholm', 'nmapholm14@biblegateway.com', 'Female', '80 SUGAR CREEK CENTER BLVD', 8, '8/3/2025', '6/12/2025'),
(42, 'Frazer', 'Waadenburg', 'fwaadenburg15@trellian.com', 'Male', '80 SUGAR CREEK CENTER BLVD', 9, '2/24/2025', '11/25/2025'),
(43, 'Lillian', 'Shimoni', 'lshimoni16@gnu.org', 'Female', '17555 NE SACRAMENTO ST', 7, '4/28/2025', '5/3/2025'),
(44, 'Mile', 'Hoyle', 'mhoyle17@ox.ac.uk', 'Male', 'PZ DE LA PAU, SN', 9, '3/20/2025', '7/5/2025'),
(45, 'Sean', 'Waith', 'swaith18@imdb.com', 'Female', 'Radetzkystraße, 15', 6, '12/29/2024', '8/11/2025'),
(46, 'Junia', 'Beaumont', 'jbeaumont19@free.fr', 'Female', '400 HWY 52 BY-PASS WEST', 9, '10/29/2025', '5/10/2025'),
(47, 'Jocelyne', 'Dufour', 'jdufour1a@seesaa.net', 'Female', '500 ROSS ST.', 3, '9/22/2025', '3/18/2025'),
(48, 'Alphonse', 'Lindmark', 'alindmark1b@kickstarter.com', 'Male', '555 SOUTH FLOWER STREET  17TH FLOOR', 7, '3/21/2025', '7/16/2025'),
(49, 'Darrel', 'Pooley', 'dpooley1c@technorati.com', 'Male', 'SECOND FLOOR', 5, '4/11/2025', '11/7/2025'),
(50, 'Cord', 'Edy', 'cedy1d@accuweather.com', 'Male', '42, avenue John F. Kennedy', 4, '1/22/2025', '5/20/2025');



/*
TRUNCATE in PSQL
--> TRUNCATE quickly removes all rows from a set of tables. It has the same effect as an unqualified DELETE on each table, 
but since it does not actually scan the tables it is faster. Furthermore, it reclaims disk space immediately, 
rather than requiring a subsequent VACUUM operation. This is most useful on large tables.
--> Syntax: TRUNCATE TABLE table_name; 
*/
TRUNCATE TABLE table_name;
-- To all table data ---
SELECT * FROM table_name;


--- DROP TABLE - to delete table from database ---
TRUNCATE TABLE table_name;



/*
ATER command for TABLE in PSQL
--> TThe ALTER command in PostgreSQL is a versatile SQL statement used to modify the structure or properties of various database objects. 
	While ALTER TABLE is the most common usage, it can also be applied to other objects like databases, users, and sequences.
*/

--- adding a column. ---
    ALTER TABLE table_name ADD COLUMN new_column_name data_type;

--- dropping a column. ---
    ALTER TABLE table_name DROP COLUMN column_name;

--- Modifying a column's data type. ---
    ALTER TABLE table_name ALTER COLUMN column_name TYPE new_data_type;

--- renaming a column. ---
ALTER TABLE table_name RENAME COLUMN old_column_name TO new_column_name;

---- Adding or dropping constraints. -----
    ALTER TABLE table_name ADD CONSTRAINT constraint_name UNIQUE (column_name);
    ALTER TABLE table_name DROP CONSTRAINT constraint_name;

---- renaming a table.
    ALTER TABLE old_table_name RENAME TO new_table_name;



