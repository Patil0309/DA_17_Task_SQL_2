CREATE TABLE sellers (
    seller_id SERIAL PRIMARY KEY,
    seller_name VARCHAR(100) NOT NULL,
    seller_email VARCHAR(150)  NOT NULL,
    seller_phone VARCHAR(15) UNIQUE
);

INSERT INTO sellers (seller_name, seller_email, seller_phone) 
VALUES 
('Rahul Sharma', 'rahul.sharma@example.com', '9876543210'),
('Priya Verma', 'priya.verma@example.com', '8765432109'),
('Amit Patel', 'amit.patel@example.com', '7654321098'),
('Neha Singh', 'neha.singh@example.com', '6543210987'),
('Rakesh Yadav', 'rakesh.yadav@example.com', '5432109876');


select* from sellers

CREATE TABLE buyers (
    buyer_id SERIAL PRIMARY KEY,
    buyer_name VARCHAR(100) NOT NULL,
    buyer_email VARCHAR(150) NOT NULL,
    seller_id INT NOT NULL,
    FOREIGN KEY (seller_id) REFERENCES sellers(seller_id))

INSERT INTO buyers (buyer_name, buyer_email, seller_id) 
VALUES 
('Arjun Mehta', 'arjun.mehta@example.com', 1),  -- Linked to seller_id 1 (Rahul Sharma)
('Sneha Kapoor', 'sneha.kapoor@example.com', 2), -- Linked to seller_id 2 (Priya Verma)
('Vikas Malhotra', 'vikas.malhotra@example.com', 3), -- Linked to seller_id 3 (Amit Patel)
('Kiran Joshi', 'kiran.joshi@example.com', 4), -- Linked to seller_id 4 (Neha Singh)
('Anjali Chauhan', 'anjali.chauhan@example.com', 5); -- Linked to seller_id 5 (Rakesh Yadav)
	
select * from buyers	