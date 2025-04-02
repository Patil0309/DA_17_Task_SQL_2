CREATE TABLE Examination ( exam_id SERIAL PRIMARY KEY,
exam_name VARCHAR(100) NOT NUll,
exam_date DATE NOT NULL,
exam_location VARCHAR(255)
);

select* from examination

INSERT INTO Examination (exam_name, exam_date, exam_location) 
VALUES 
('UPSC Civil Services', '2025-06-10', 'New Delhi'),
('JEE Advanced', '2025-05-20', 'Mumbai'),
('NEET UG', '2025-07-15', 'Bangalore'),
('CAT', '2025-11-25', 'Kolkata');

CREATE TABLE Aspirants ( aspirant_id SERIAL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
dob DATE,
exam_id INT,
CONSTRAINT fk_examination FOREIGN KEY (exam_id) REFERENCES Examination(exam_id))

select * from examination

INSERT INTO Aspirants (first_name, last_name, dob, exam_id) 
VALUES 
('Rohan', 'Sharma', '2001-04-15', 1),  -- Linked to exam_id 1 (UPSC Civil Services)
('Priya', 'Verma', '2003-06-22', 2), -- Linked to exam_id 2 (JEE Advanced)
('Amit', 'Patel', '2002-09-10', 3), -- Linked to exam_id 3 (NEET UG)
('Neha', 'Singh', '2000-12-05', 4); -- Linked to exam_id 4 (CAT)

select * from Aspirants

