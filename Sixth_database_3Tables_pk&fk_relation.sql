--Database is based on travel management and three three table which includes 
   --1] Passengers(stores passenger details)
   --2]flights(Stores flight details)
   --3]Bookings(Maintain relation between Passengers and Flights )

--Creating First table "Passenger"
CREATE TABLE Passengers (
    passenger_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    email VARCHAR(100) UNIQUE
);

 INSERT INTO Passengers (first_name, last_name, age, email) VALUES
('Rahul', 'Sharma', 30, 'rahul.sharma@example.com'),
('Priya', 'Verma', 25, 'priya.verma@example.com'),
('Amit', 'Patel', 35, 'amit.patel@example.com'),
('Neha', 'Singh', 28, 'neha.singh@example.com');

 select* from passengers

--Creating Second table "Flights"
CREATE TABLE Flights (
    flight_id SERIAL PRIMARY KEY,
    flight_number VARCHAR(20) NOT NULL UNIQUE,
    departure VARCHAR(100),
    destination VARCHAR(100),
    departure_date DATE NOT NULL
);
----------------------------------------------------------
--Creating Second Table
CREATE TABLE Flights (
    flight_id SERIAL PRIMARY KEY,
    flight_number VARCHAR(20) NOT NULL UNIQUE,
    departure VARCHAR(100),
    destination VARCHAR(100),
    departure_date DATE NOT NULL
);

INSERT INTO Flights (flight_number, departure, destination, departure_date) VALUES
('AI101', 'Delhi', 'Mumbai', '2025-06-15'),
('BA202', 'Mumbai', 'London', '2025-06-20'),
('EK303', 'Bangalore', 'Dubai', '2025-07-05'),
('SQ404', 'Chennai', 'Singapore', '2025-07-10');

 select * from flights
 -------------------------------------------------------------------------------------
--Creating third table
 CREATE TABLE Bookings (
    booking_id SERIAL PRIMARY KEY,
    passenger_id INT,
    flight_id INT,
    seat_number VARCHAR(10),
    CONSTRAINT fk_passenger_Bookings FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id),
    CONSTRAINT fk_flight_Bookings FOREIGN KEY (flight_id) REFERENCES Flights(flight_id)
);

select * from Bookings
INSERT INTO Bookings (passenger_id, flight_id, seat_number) VALUES
(1, 1, 'A1'),
(2, 2, 'B2'),
(3, 3, 'C3'),
(4, 4, 'D4');
---------------------------------------------------------------------------------------------------------------------------------------------------------------

