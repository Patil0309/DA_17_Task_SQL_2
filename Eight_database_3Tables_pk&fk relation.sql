--database of hospital_management haivng three table which are as below
--1]Patients(Stores patients details) 2]Doctors(stores doctor details) 3]Appointments(Maintain relationship between Patients and doctors)

--Creating table patients

CREATE TABLE Patients (
    patient_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    contact_number VARCHAR(15) UNIQUE
);

INSERT INTO Patients (first_name, last_name, age, contact_number) VALUES
('Rohan', 'Tiwari', 45, '9876543210'),
('Simran', 'Gupta', 30, '8765432109'),
('Aryan', 'Bose', 28, '7654321098'),
('Meera', 'Reddy', 35, '6543210987');

select* from patients
---------------------------------------------------------------------------------------------------

--creating table doctors
CREATE TABLE Doctors (
    doctor_id SERIAL PRIMARY KEY,
    doctor_name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100),
    contact_number VARCHAR(15) UNIQUE
);

INSERT INTO Doctors (doctor_name, specialization, contact_number) VALUES
('Dr. Sanjay Kapoor', 'Cardiologist', '9998887776'),
('Dr. Priya Nair', 'Neurologist', '8887776665'),
('Dr. Amit Joshi', 'Dermatologist', '7776665554'),
('Dr. Neha Mishra', 'Orthopedic', '6665554443');

select *from doctors
-------------------------------------------------------------------------------

--creating table of Appointments
CREATE TABLE Appointments (
    appointment_id SERIAL PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    CONSTRAINT fk_patient FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    CONSTRAINT fk_doctor FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);
select* from appointments

INSERT INTO Appointments (patient_id, doctor_id, appointment_date) VALUES
(1, 1, '2025-06-01'),
(2, 2, '2025-06-05'),
(3, 3, '2025-06-10'),
(4, 4, '2025-06-15');
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------