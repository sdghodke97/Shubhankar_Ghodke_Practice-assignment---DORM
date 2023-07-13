create database TravelOntheGo;
use TravelOntheGo;

CREATE TABLE PASSENGER (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Passenger_name VARCHAR(255),
    Category VARCHAR(255),
    Gender VARCHAR(255),
    Boarding_City VARCHAR(255),
    Destination_City VARCHAR(255),
    Distance INT,
    Bus_Type VARCHAR(255)
);

CREATE TABLE PRICE (
    Bus_Type VARCHAR(255),
    Distance INT,
    Price INT
);

INSERT INTO PASSENGER (Passenger_name, Category, Gender, Boarding_City, Destination_City, Distance, Bus_Type)
VALUES ('Sejal', 'AC', 'F', 'Bengaluru', 'Chennai', '350', 'Sleeper'),
       ('Anmol', 'Non-AC', 'M', 'Mumbai', 'Hyderabad', '700', 'Sitting'),
       ('Pallavi', 'AC', 'F', 'Panaji', 'Bengaluru', '600', 'Sleeper'),
       ('Khusboo', 'AC', 'F', 'Chennai', 'Mumbai', '1500', 'Sleeper'),
       ('Udit', 'Non-AC', 'M', 'Trivandrum', 'Panaji', '1000', 'Sleeper'),
       ('Ankur', 'AC', 'M', 'Nagpur', 'Hyderabad', '500', 'Sitting'),
       ('Hemant', 'Non-AC', 'M', 'Panaji', 'Mumbai', '700', 'Sleeper'),
       ('Manish', 'Non-AC', 'M', 'Hyderabad', 'Bengaluru', '500', 'Sitting'),
       ('Piyush', 'AC', 'M', 'Pune', 'Nagpur', '700', 'Sitting');

INSERT INTO PRICE (Bus_Type, Distance, Price)
VALUES ('Sleeper', 350, 770),
       ('Sleeper', 500, 1100),
       ('Sleeper', 600, 1320),
       ('Sleeper', 700, 1540),
       ('Sleeper', 1000, 2200),
       ('Sleeper', 1200, 2640),
       ('Sleeper', 1500, 2700),
       ('Sitting', 500, 620),
       ('Sitting', 600, 744),
       ('Sitting', 700, 868),
       ('Sitting', 1000, 1240),
       ('Sitting', 1200, 1488),
       ('Sitting', 1500, 1860);
       
       
       
      
