CREATE TABLE Insurance_Company (
    company_id SERIAL PRIMARY KEY,
    company_name VARCHAR(100) NOT NULL,
    company_address VARCHAR(255),
    contact_number VARCHAR(15)
	)
	

select * from Insurance_company

INSERT INTO Insurance_Company (company_name, company_address, contact_number) 
VALUES 
('Max Life Insurance', 'Delhi, India', '9876543210'),
('HDFC Ergo', 'Mumbai, India', '8765432109'),
('ICICI Lombard', 'Bangalore, India', '7654321098'),
('Tata AIG', 'Chennai, India', '6543210987'),
('Bajaj Allianz', 'Kolkata, India', '5432109876');

select * from Insurance_company

create table traveler( traveler_id SERIAL PRIMARY KEY,	
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    insurance_company_id INT,
    CONSTRAINT fk_insurance_company
    FOREIGN KEY (insurance_company_id) REFERENCES Insurance_Company(company_id)
	)
	
 select * from traveler	

 INSERT INTO traveler (first_name, last_name, age, insurance_company_id) 
VALUES 
('Arjun', 'Mehta', 30, 1),  -- Linked to company_id 1 (Max Life Insurance)
('Sneha', 'Kapoor', 28, 2), -- Linked to company_id 2 (HDFC Ergo)
('Vikas', 'Malhotra', 35, 3), -- Linked to company_id 3 (ICICI Lombard)
('Kiran', 'Joshi', 40, 4), -- Linked to company_id 4 (Tata AIG)
('Anjali', 'Chauhan', 25, 5); -- Linked to company_id 5

select* from traveler

 
	