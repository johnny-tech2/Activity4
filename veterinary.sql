-- veterinary.sql file
CREATE DATABASE veterinary,

CREATE TABLE owners(
    ownerid INT PRIMARY KEY,
    ofirstname VARCHAR(50),
    olastname VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE animals (
    animalid INT PRIMARY KEY,
    name VARCHAR(50),
    species VARCHAR(50),
    breed VARCHAR(50),
    dateofbirth DATE,
    gender VARCHAR(10),
    color VARCHAR(50),
    ownerid INT,
    FOREIGN KEY (ownerid) REFERENCES owners(ownerid)
);
 
 CREATE TABLE appointments (
    appointid INT PRIMARY KEY,
    animalid INT,
    appointdate DATE,
    reason VARCHAR(255),
    FOREIGN KEY (animalid) REFERENCES animals(animalid)
);

CREATE TABLE doctors (
    doctorid INT PRIMARY KEY,
    dfirstname VARCHAR(50),
    dlastname VARCHAR(50),
    specialization VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);
CREATE TABLE invoices (
    invoiceid INT PRIMARY KEY,
    appointid INT,
    totalamount DECIMAL(10, 2),
    paymentdate DATE
);

CREATE TABLE medicalrecords (
    recordid INT PRIMARY KEY,
    animalid INT PRIMARY KEY, 
    recorddate DATE, 
    doctorid INT PRIMARY KEY,
    diagnosis VARCHAR(255),
    prescription VARCHAR(255),
    notes VARCHAR(255)
);

INSERT INTO owners (ofirstname, olastname, address, phone, email) 
VALUES ('John', 'Doe', '123 Main St', '555-1234', 'jdoe@yahoo.com'),
       ('Jane', 'Smith', '456 Oak St', '555-5678', 'jsmith@yahoo.com'),
       ('Emily', 'Johnson', '789 Pine St', '555-8765', 'ejohnson@yahoo.com'),
       ('Michael', 'Brown', '321 Maple St', '555-4321', 'mbrown@yahoo.com'),
       ('Sarah', 'Davis', '654 Cedar St', '555-6789', 'sdavis@yahoo.com'),
       ('David', 'Wilson', '987 Birch St', '555-9876', 'dwilson@yahoo.com'),
       ('Laura', 'Garcia', '147 Spruce St', '555-2468', 'lgarcia@yahoo.com'),
       ('James', 'Martinez', '258 Elm St', '555-1357', 'jmartinez@yahoo.com'),
       ('Linda', 'Rodriguez', '369 Walnut St', '555-8642', 'lrodriguez@yahoo.com'),
       ('Robert', 'Hernandez', '159 Chestnut St', '555-9753', 'rhernandez@yahoo.com');

INSERT INTO animals (name, species, breed, dateofbirth, gender, color)
VALUES ('chloe', 'Dog', ' Aspin', 'January 01, 2024', 'Male', 'Black'),
       ('Robert' 'Dog', 'Shit-Zu', 'January 5, 2025', 'Female', 'White-Brown'),
       ('Whitey', 'Cat', 'Persian', 'February 22, 2025', 'Female', 'White'),
       ('Snow', 'Cat', 'Persian', 'December 12, 2024', 'Female', 'White'),
       ('Gigi', 'Chicken', 'Native', 'April 29, 2025', 'Female', 'Red'),
       ('Clark', 'Bird', 'Love Birds', 'March 15, 202', 'Male', 'Green'),
       ('Browny', 'Dog', 'American Bully', 'June 20, 2025', 'Male', 'White'),
       ('Alpha', 'Dog', 'Husky', 'April 11, 2025', 'Male', 'Gray'),
       ('Bravo', 'Dog,' 'Husky', 'January 4, 2024', 'Male', 'White'),
       ('Betty', 'Dog', 'Poodle', 'January 20, 2024', 'Male', 'White');

INSERT INTO appointments (appointid, animalid, appointdate, reason) 
VALUES (1, 1, '2023-01-05', 'Vaccination'), 
       (2, 2, '2023-02-02', 'Sprained leg'), 
       (3, 3, '2023-02-15', 'Dental cleaning'),
       (4, 4, '2023-03-10', 'Skin infection'), 
       (5, 5, '2023-04-12', 'Vaccination'), 
       (6, 6, '2023-03-10', 'Flea infestation'), 
       (7, 7, '2023-04-18', 'Spaying'), 
       (8, 8, '2023-05-02', 'Allergic reaction'), 
       (9, 9, '2023-05-20', 'Conjunctivitis'), 
       (10, 10, '2023-06-01', 'Annual checkup');


