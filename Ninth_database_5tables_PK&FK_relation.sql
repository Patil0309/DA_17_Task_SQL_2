CREATE TABLE Customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15) UNIQUE NOT NULL
);

INSERT INTO Customers (first_name, last_name, email, phone) VALUES
('Rahul', 'Sharma', 'rahul@example.com', '9876543210'),
('Priya', 'Verma', 'priya@example.com', '8765432109'),
('Amit', 'Patel', 'amit@example.com', '7654321098'),
('Neha', 'Singh', 'neha@example.com', '6543210987'),
('Rakesh', 'Yadav', 'rakesh@example.com', '5432109876');

  select* from customers
  --------------------------------------------------------------------------------------

  CREATE TABLE Orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

select *from orders

INSERT INTO Orders (customer_id, order_date, total_amount) VALUES
(1, '2025-04-01', 5000.00),
(2, '2025-04-02', 7500.50),
(3, '2025-04-03', 1200.75),
(4, '2025-04-04', 2999.99),
(5, '2025-04-05', 4500.25);

----------------------------------------------------------------------------------------------
CREATE TABLE Payments (
    payment_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    order_id INT NOT NULL,
    payment_date DATE NOT NULL,
    payment_amount DECIMAL(10,2) NOT NULL,
    CONSTRAINT fk_customer_payment FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    CONSTRAINT fk_order_payment FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

INSERT INTO Payments (customer_id, order_id, payment_date, payment_amount) VALUES
(1, 1, '2025-04-01', 5000.00),
(2, 2, '2025-04-02', 7500.50),
(3, 3, '2025-04-03', 1200.75),
(4, 4, '2025-04-04', 2999.99),
(5, 5, '2025-04-05', 4500.25);

select*from payments
--------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Support_Tickets (
    ticket_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    issue_description TEXT NOT NULL,
    status VARCHAR(20) NOT NULL CHECK (status IN ('Open', 'Closed', 'Pending')),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_customer_ticket FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);


  select* from support_tickets

  INSERT INTO Support_Tickets (customer_id, issue_description, status) VALUES
(1, 'Late delivery of order.', 'Open'),
(2, 'Received a damaged product.', 'Pending'),
(3, 'Wrong item delivered.', 'Closed'),
(4, 'Payment not reflecting.', 'Open'),
(5, 'Refund request pending.', 'Pending');

------------------------------------------------------------------------------------------------------

CREATE TABLE Addresses (
    address_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    street VARCHAR(255) NOT NULL,
    city VARCHAR(100) NOT NULL,
    state VARCHAR(100) NOT NULL,
    zip_code VARCHAR(10) NOT NULL,
    country VARCHAR(100) NOT NULL,
    CONSTRAINT fk_customer_address FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Addresses (customer_id, street, city, state, zip_code, country) VALUES
(1, '123 Main St', 'Delhi', 'Delhi', '110001', 'India'),
(2, '456 Park Ave', 'Mumbai', 'Maharashtra', '400001', 'India'),
(3, '789 Green Rd', 'Bangalore', 'Karnataka', '560001', 'India'),
(4, '101 Lake St', 'Chennai', 'Tamil Nadu', '600001', 'India'),
(5, '202 Hill Ln', 'Kolkata', 'West Bengal', '700001', 'India');

select*from addresses

-----------------------------------------------------------------------------------------------------------------------