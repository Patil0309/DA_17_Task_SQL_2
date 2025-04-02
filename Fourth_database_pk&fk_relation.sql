CREATE TABLE Passenger (passenger_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    email VARCHAR(100)
	)

select * from passenger

INSERT INTO Passenger (first_name, last_name, age, email) 
VALUES 
('Rahul', 'Sharma', 30, 'rahul.sharma@example.com'),
('Priya', 'Verma', 25, 'priya.verma@example.com'),
('Amit', 'Patel', 35, 'amit.patel@example.com'),
('Neha', 'Singh', 28, 'neha.singh@example.com'),
('Rakesh', 'Yadav', 40, 'rakesh.yadav@example.com');
	

CREATE TABLE Train_Booking (
    booking_id SERIAL PRIMARY KEY,
    train_number VARCHAR(20) NOT NULL,
    departure_date DATE NOT NULL,
    seat_number VARCHAR(10),
    passenger_id INT,
    CONSTRAINT fk_passenger
    FOREIGN KEY (passenger_id) REFERENCES Passenger(passenger_id)
	)

select * from Train_Booking	

INSERT INTO Train_Booking (train_number, departure_date, seat_number, passenger_id) 
VALUES 
('12345', '2025-04-10', 'A1-21', 1),  -- Linked to passenger_id 1 (Rahul Sharma)
('54321', '2025-04-12', 'B2-15', 2), -- Linked to passenger_id 2 (Priya Verma)
('67890', '2025-04-15', 'C3-07', 3), -- Linked to passenger_id 3 (Amit Patel)
('09876', '2025-04-18', 'D4-12', 4), -- Linked to passenger_id 4 (Neha Singh)
('13579', '2025-04-20', 'E5-09', 5); -- Linked to passenger_id 5 (Rakesh Yadav)
 


        	