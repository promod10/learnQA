
-- Ensure schema exists
CREATE SCHEMA IF NOT EXISTS staffs;

-- Create table
CREATE TABLE staffs.users (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    gender VARCHAR(7) CHECK (gender IN ('Male', 'Female')),
    mobile VARCHAR(15),
    department VARCHAR(80),
    salary NUMERIC(12,2) CHECK (salary >= 0),
    u_address VARCHAR(200),
    designation VARCHAR(50),
    joining_at DATE NOT NULL
);


INSERT INTO staffs.users
(first_name, last_name, email, gender, mobile, department, salary, u_address, designation, joining_at)
VALUES
('Durga','Parsai','rcostelloe0@harvard.edu','Male','9840123456','Legal',70000,'Bashehor,5th Floor','Developer','2024-12-07'),
('Sita','Kandel','sdaubeny1@cdc.gov','Female','9840123456','Sales',20000,'Satdobato,20th Floor','Developer','2025-04-11'),
('Mina','Karki','Female','droxbee2@tumblr.com','9840123456','Human Resources',30000,'Koteshwor,Room 725','Developer','2025-08-21'),
('Salina','Manandhar','mpeek3@tamu.edu','Female','9840123456','Accounting',20000,'Panga, PO Box 19997','Developer','2025-10-28'),
('Mahesh','Basnet','amarchelli4@state.gov','Male','9840123456','Human Resources',50000,'Kritipur, Room 1615','Developer','2025-08-22'),
('Keshav','Sthapit','gocridigan5@jigsy.com','Male','9840123456','Research and Development',80000,'Banepa, PO Box 58054','Developer','2025-03-11'),
('Titous','Kafle','vwinkle6@yellowpages.com','Male','9840123456','Accounting',70000,'Sanga, Suite 8','Developer','2025-08-17'),
('Jaya','Biddles','cbiddles7@com.com','Female','9840123456','Legal',45000,'Kusunti, PO Box 64095','Developer','2025-06-18'),
('Kunti','Nacey','anacey8@cbsnews.com','Female','9840123456','Marketing',71000,'Lagankhel, PO Box 3256','Developer','2025-02-07'),
('Hari','Ludlamme','dludlamme9@microsoft.com','Male','9840123456','Product Management',78000,'Pokhara, 5th Floor','Developer','2025-03-31'),
('Bimala','MacGragh','nmacgragha@spotify.com','Female','9840123456','Legal',74000,'Bishalnagar, PO Box 26790','Developer','2025-02-08'),
('Rju','Poker','bpokerb@cocolog-nifty.com','Male','9840123456','Research and Development',32000,'Thankot, Suite 30','Developer','2025-11-20'),
('Roshan','Herion','pherionc@un.org','Male','9840123456','Business Development',89000,'Jhapa, Apt 821','Developer','2025-04-08'),
('Madhab','Guyonnet','dguyonnetd@simplemachines.org','Male','9840123456','Product Management',43000,'Ekantakuna, 6th Floor','Developer','2025-07-22'),
('Busnu','Hussey','chusseye@indiegogo.com','Male','9840123456','Support',25000,'Tinkune, Suite 25','Developer','2025-01-14'),
('Humananda','Tabord','htabordf@mozilla.org','Male','9840123456','Accounting',15000,'Budhanilkantha, Suite 19','Developer','2025-09-02'),
('Envy','Whipp','rwhippg@livejournal.com','Female','9840123456','Accounting',56000,'Sunakothi, 17th Floor','Developer','2025-10-30'),
('Trisha','Kernaghan','zkernaghanh@washingtonpost.com','Female','9840123456','Business Development',170000,'Bhaktapur, PO Box 1476','Developer','2025-01-31'),
('Mohan','Ilchuk','bilchuki@livejournal.com','Male','9840123456','Engineering',1070000,'Lalitpur, PO Box 99493','Developer','2025-02-28'),
('Sohan','Vivians','lviviansj@yahoo.co.jp','Male','9840123456','Legal',10000,'Kalanki, PO Box 18158','Developer','2025-05-31');


-- 1. Insert a single record
INSERT INTO staffs.users
(first_name, last_name, email, gender, mobile, department, salary, u_address, designation, joining_at)
VALUES
('Ramesh', 'Shrestha', 'ramesh.shrestha@gmail.com', 'Male','9840111111', 'Engineering', 60000,'Imadol, Lalitpur', 'Developer', '2025-06-01');


--- 2. Insert  multiple records in table
INSERT INTO staffs.users
(first_name, last_name, email, gender, mobile, department, salary, u_address, designation, joining_at)
VALUES
('Anita', 'Thapa', 'anita.thapa@gmail.com', 'Female', '9840222222',
 'Marketing', 45000, 'Baneshwor, Kathmandu', 'Executive', '2025-06-10'),

('Suresh', 'Adhikari', 'suresh.adhikari@gmail.com', 'Male', '9840333333',
 'Support', 30000, 'Kalanki, Kathmandu', 'Support Engineer', '2025-06-12');



--- 3. Insert Data That Contains Quotes----> Use single-quote escaping (''):
INSERT INTO staffs.users
(first_name, last_name, email, gender, mobile, department, salary, u_address, designation, joining_at)
VALUES
('O''Brien', 'Sharma', 'obrien.sharma@gmail.com', 'Male',
 '9840444444', 'Legal', 55000,
 'Dallu''s Area, Kathmandu', 'Advisor', '2025-06-15');


----- 4. Use RETURNING to Get Inserted Row Information
INSERT INTO staffs.users
(first_name, last_name, email, gender, mobile, department, salary, u_address, designation, joining_at)
VALUES
('Kiran', 'Rana', 'kiran.rana@gmail.com', 'Male',
 '9840555555', 'Finance', 72000,
 'Pulchowk, Lalitpur', 'Analyst', '2025-06-18')
RETURNING id, first_name, department, salary;

--- 5. Update Data in a Table. --> Increase salary for one employee:
UPDATE staffs.users SET salary = 80000 WHERE email = 'kiran.rana@gmail.com';



--- 6. Update a Row and Return the Updated Record
UPDATE staffs.users SET salary = salary + 5000 WHERE department = 'Legal' AND first_name = 'Durga' RETURNING id, first_name, salary;


--- 7. Update All Records in the Table ------>> Apply a 10% salary increase to everyone:
UPDATE staffs.users SET salary = salary * 1.10;



---8. Delete Data from the Table

--- Delete employees with very low salary:
DELETE FROM staffs.users WHERE salary < 20000;

-- Delete a specific employee:
DELETE FROM staffs.users WHERE email = 'obrien.sharma@gmail.com';



---9. Using UPSERT (INSERT … ON CONFLICT)
---------This assumes email is UNIQUE (as defined earlier).

INSERT INTO staffs.users(first_name, last_name, email, gender, mobile, department, salary, u_address, designation, joining_at)
VALUES
('Ramesh', 'Shrestha', 'ramesh.shrestha@gmail.com', 'Male','9840111111', 'Engineering', 65000,'Imadol, Lalitpur', 'Senior Developer', '2025-06-01')
ON CONFLICT (email) 
DO UPDATE
SET
    salary = EXCLUDED.salary, designation = EXCLUDED.designation 

RETURNING id, first_name, salary, designation;





