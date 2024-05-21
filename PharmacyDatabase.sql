CREATE TABLE
    customer (
        cus_id NUMBER (10) NOT NULL primary key,
        first_name CHAR(25) NOT NULL,
        last_name CHAR(25) NOT NULL,
        Phone NUMBER (10) NOT NULL UNIQUE,
        Gender CHAR(1) NOT NULL,
        Address CHAR(50) NOT NULL,
        insurance_id NUMBER (10) NOT NULL UNIQUE
    );

Insert into
    customer
values
    (
        250,
        'siva',
        'pavan',
        9573415358,
        'M',
        'kadapa',
        36251
    );

Insert into
    customer
values
    (
        251,
        'Ram',
        'gopal',
        9000334591,
        'M',
        'Vijayawada',
        24536
    );

Insert into
    customer
values
    (
        264,
        'revanth',
        'gupta',
        6300140251,
        'F',
        'Kallur',
        32125
    );

Insert into
    customer
values
    (
        270,
        'akhil',
        'satya',
        7075912180,
        'M',
        'rajahmundry',
        89546
    );

Insert into
    customer
values
    (
        279,
        'Abhinay',
        'reddy',
        6301859930,
        'M',
        'khammam',
        11394
    );

select
    *
from
    customer;

ALTER TABLE Customer ADD CONSTRAINT ins FOREIGN KEY (insurance_id) REFERENCES Insurance (insurance_id);

CREATE TABLE
    Prescription (
        prescription_id NUMBER (10) NOT NULL primary key,
        cus_id NUMBER (10) NOT NULL,
        doctor_id NUMBER (10) NOT NULL,
        prescribed_date VARCHAR(10) NOT NULL
    );

insert into
    prescription
values
    (21, 250, 362, '01-04-2020');

insert into
    prescription
values
    (22, 251, 369, '08-06-2020');

insert into
    prescription
values
    (24, 264, 170, '11-05-2020');

insert into
    prescription
values
    (25, 270, 285, '18-07-2020');

insert into
    prescription
values
    (26, 279, 320, '21-09-2020');

select
    *
from
    prescription;

ALTER TABLE Prescription ADD CONSTRAINT holds FOREIGN KEY (cus_id) REFERENCES Customer (cus_id);

CREATE TABLE
    Prescribed_Drugs (
        Prescription_ID number (10) NOT NULL,
        Drug_Name char(255) NOT NULL,
        Prescribed_Quantity number (10) NOT NULL,
        PRIMARY KEY (Prescription_ID, Drug_Name)
    );

INSERT into
    prescribed_drugs
values
    (22, 'lipitor', 5);

INSERT into
    prescribed_drugs
values
    (21, 'amlodipine', 6);

INSERT into
    prescribed_drugs
values
    (24, 'vicodin', 10);

INSERT into
    prescribed_drugs
values
    (25, 'Lisinopril', 10);

INSERT into
    prescribed_drugs
values
    (26, 'Metformin', 15);

select
    *
from
    prescribed_drugs;

ALTER TABLE Prescribed_Drugs ADD CONSTRAINT consists_of FOREIGN KEY (Prescription_ID) REFERENCES Prescription (Prescription_ID) ON DELETE Cascade;

CREATE TABLE
    Orders (
        Order_ID number (10) NOT NULL primary key,
        Prescription_ID NULL,
        Emp_ID number (5) NOT NULL,
        Order_Date varchar(10) NOT NULL
    );

insert into
    orders
values
    (785, 21, 450, '02-04-2020');

insert into
    orders
values
    (886, 22, 450, '09-06-2020');

insert into
    orders
values
    (889, 24, 570, '12-05-2020');

insert into
    orders
values
    (530, 25, 570, '19-07-2020');

insert into
    orders
values
    (345, 26, 524, '22-09-2020');

select
    *
from
    orders;

desc table orders;

ALTER TABLE Orders ADD CONSTRAINT prepares FOREIGN KEY (Emp_Id) REFERENCES Employee (emp_ID);

ALTER TABLE Orders ADD CONSTRAINT uses FOREIGN KEY (Prescription_ID) REFERENCES Prescription (Prescription_ID);

CREATE TABLE
    Ordered_Drugs (
        Order_ID number (10) NOT NULL,
        Drug_Name char(255) NOT NULL,
        Batch_Number number (10) NOT NULL,
        Price number (5) NOT NULL,
        PRIMARY KEY (Order_ID, Drug_Name, Batch_Number)
    );

insert into
    ordered_drugs
values
    (785, 'amlodipine', 56892, 1000);

insert into
    ordered_drugs
values
    (886, 'lipitor', 54376, 2000);

insert into
    ordered_drugs
values
    (530, 'Lisinopril', 67835, 3500);

select
    *
from
    ordered_drugs;

ALTER TABLE Ordered_Drugs ADD CONSTRAINT contains FOREIGN KEY (Order_ID) REFERENCES Orders (Order_ID) ON DELETE Cascade;

ALTER TABLE Ordered_Drugs ADD CONSTRAINT Fulfilled FOREIGN KEY (Drug_Name, Batch_Number) REFERENCES Medicine (Drug_Name, Batch_Number);

CREATE TABLE
    Insurance (
        Insurance_ID number (10) NOT NULL,
        Company_Name char(25) NOT NULL,
        Start_Date varchar(10) NOT NULL,
        PRIMARY KEY (Insurance_ID)
    );

insert into
    insurance
values
    (36251, 'Go digit Ltd', '07-07-2015');

insert into
    insurance
values
    (24536, 'National Insurance co.Ltd', '08-06-2014');

insert into
    insurance
values
    (32125, 'National Insurance co.Ltd', '18-07-2016');

insert into
    insurance
values
    (89546, 'Bajaj co. Ltd', '25-01-2017');

insert into
    insurance
values
    (1394, 'Bajaj co. Ltd', '26-11-2015');

select
    *
from
    insurance;

CREATE TABLE
    Employee (
        Emp_ID NUMBER (5) NOT NULL,
        License_Number VARCHAR(10) UNIQUE,
        name CHAR(25) NOT NULL,
        role CHAR(25) NOT NULL,
        salary NUMBER (6) NOT NULL,
        phone_number NUMBER (10) NOT NULL,
        PRIMARY KEY (emp_ID)
    );

insert into
    employee
values
    (
        450,
        'BJ5431',
        'Dinesh',
        'Salesman',
        25000,
        859347928
    );

insert into
    employee
values
    (
        550,
        'JS3463',
        'Uday Kumar',
        'Accountant',
        50000,
        7337217986
    );

insert into
    employee
values
    (
        460,
        'ka5342',
        'Charan',
        'Manager',
        60000,
        9494614108
    );

insert into
    employee
values
    (
        570,
        'kj2135',
        'Ramireddy',
        'salesman',
        20000,
        8341896743
    );

insert into
    employee
values
    (
        524,
        'sa5768',
        'Mandi',
        'salesman',
        20000,
        9948876320
    );

select
    *
from
    employee;

CREATE TABLE
    Medicine (
        drug_name CHAR(25) NOT NULL,
        Batch_Number number (10) NOT NULL,
        Manufacturer CHAR(25) NOT NULL,
        stock_quantity NUMBER (10) NOT NULL,
        Price NUMBER (4) NOT NULL,
        PRIMARY KEY (drug_name, batch_number)
    );

insert into
    medicine
values
    ('lipitor', 54376, 'Bias', 1000, 400);

insert into
    medicine
values
    ('Amlodipine', 56892, 'Biovista', 700, 160);

insert into
    medicine
values
    ('Vicodin', 47683, 'Alcon', 500, 200);

insert into
    medicine
values
    ('Lisinopril', 67835, 'Almirall', 500, 350);

insert into
    medicine
values
    ('Metformin', 78963, 'Apolo', 650, 300);

insert into
    medicine
values
    ('Albuterol', 56773, 'Bausch', 705, 200);

insert into
    medicine
values
    ('Gabapentin', 48789, 'Bausch', 300, 150);

insert into
    medicine
values
    ('Neurontin', 49325, 'Biocon', 250, 100);

select
    *
from
    medicine;

create table
    bill (
        Order_ID number (10) NOT NULL,
        cus_id NUMBER (10) NOT NULL,
        total_amount NUMBER (4) NOT NULL,
        PRIMARY KEY (order_id, cus_id)
    );

insert into
    bill
values
    (785, 250, 5000);

insert into
    bill
values
    (886, 264, 2500);

insert into
    bill
values
    (530, 251, 4000);

insert into
    bill
values
    (345, 279, 5000);

select
    *
from
    bill;

ALTER TABLE Bill ADD CONSTRAINT makes FOREIGN KEY (Order_ID) REFERENCES Orders (Order_ID);
ALTER TABLE Bill ADD CONSTRAINT pays FOREIGN KEY (cus_id) REFERENCES Customer(cus_id);

CREATE OR REPLACE

PROCEDURE ADD_DRUG_TO_ORDER (
order_id IN INT,  drug_name IN CHAR(255),  quantity IN INT
)  AS

drug MEDICINE%ROWTYPE;
insufficient_quantity EXCEPTION;  BEGIN

SELECT *

INTO drug

FROM MEDICINE
WHERE 'drug_name' = drug_name;  IF drug.quantity < quantity
THEN
RAISE insufficient_quantity;

ELSE

INSERT INTO ORDERED_DRUGS
VALUES (order_id, drug.drug_name, drug.batch_number, quantity, drug.price);  DBMS_OUTPUT.PUT_LINE("Drug added successfully to the order");
END IF;  EXCEPTION
WHEN insufficient_quantity THEN

DBMS_OUTPUT.PUT_LINE(

"Request drug " || drug_name || " is not available. Maximum order possible is " || drug.quantity
);  END;

CREATE OR REPLACE
PROCEDURE GENERATE_BILL  (
order_id IN INT,  cus_id IN INT,
)  AS

total_amount NUMBER;

BEGIN

SELECT SUM('price')

INTO total_amount

FROM ORDERED_DRUGS

WHERE 'order_id' = order_id;
INSERT INTO BILL VALUES (order_id, cus_id, total_amount);  END;


