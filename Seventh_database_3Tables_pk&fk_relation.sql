--University managemnt database which includes three tables
--1]Students(store student details) 2]Courses(stores course details) 3]Enrollments(Maintain relation between students and course)

--Creating first table "students"

CREATE TABLE Students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    dob DATE,
    email VARCHAR(100) UNIQUE
);

select* from students

INSERT INTO Students (first_name, last_name, dob, email) VALUES
('Aarav', 'Mehta', '2002-03-10', 'aarav.mehta@example.com'),
('Ishita', 'Kapoor', '2003-07-15', 'ishita.kapoor@example.com'),
('Vikas', 'Malhotra', '2001-09-25', 'vikas.malhotra@example.com'),
('Neha', 'Chauhan', '2000-11-30', 'neha.chauhan@example.com');
-----------------------------------------------------------------------------

--Creating second table "Courses"
CREATE TABLE Courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    course_code VARCHAR(10) UNIQUE,
    credits INT
);

select* from courses

INSERT INTO Courses (course_name, course_code, credits) VALUES
('Computer Science', 'CS101', 4),
('Mathematics', 'MTH102', 3),
('Physics', 'PHY103', 3),
('Chemistry', 'CHE104', 4);
---------------------------------------------------------------------------

--Third table "enrollements"
CREATE TABLE Enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT,
    course_id INT,
    semester VARCHAR(10),
    CONSTRAINT fk_student FOREIGN KEY (student_id) REFERENCES Students(student_id),
    CONSTRAINT fk_course FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

select* from enrollments

INSERT INTO Enrollments (student_id, course_id, semester) VALUES
(1, 1, 'Spring'),
(2, 2, 'Fall'),
(3, 3, 'Winter'),
(4, 4, 'Summer');

select* from enrollments

