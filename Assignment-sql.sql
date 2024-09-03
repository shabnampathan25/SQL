create database MarketCo;
use MarketCo;

create table Company(Company_ID int NOT NULL PRIMARY KEY AUTO_INCREMENT,Company_Name varchar(45),Street varchar(45),
City varchar(45),State varchar(2),Zip varchar(10));

create table Contact(Contact_ID int NOT NULL PRIMARY KEY AUTO_INCREMENT,Company_ID int,First_Name varchar(45),
Last_Name varchar(45),
Street varchar(45),City varchar(45),State varchar(2),Zip varchar(10),
IsMain boolean,Email varchar(45),Phone varchar(12),    
FOREIGN KEY (Company_ID) REFERENCES Company(Company_ID));

create table Contact_Employee(Contact_Employee_ID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
Contact_ID int,Employee_ID int ,Contact_Date int,Description varchar(100),
FOREIGN KEY(Contact_ID) REFERENCES Contact(Contact_ID));

create table Employee(Employee_ID int NOT NULL PRIMARY KEY AUTO_INCREMENT,First_Name varchar(45),Last_Name varchar(45),
Salary Decimal(10,2),Hire_Date Date,Job_Title varchar(25),Email varchar(45),Phone varchar(12));

show tables;
INSERT INTO Company (Company_Name, Street, City, State, Zip) VALUES
('Tech Solutions', '123 Innovation Dr', 'Techville', 'CA', '94016'),
('Green Energy Inc.', '456 Eco St', 'Greenville', 'TX', '75401'),
('Health Plus', '789 Wellness Blvd', 'Healthtown', 'FL', '33101'),
('EduCorp', '101 Learning Ln', 'Edutown', 'MA', '02101'),
('Foodies', '202 Gourmet Rd', 'Flavorville', 'NY', '10001'),
('AutoMakers', '303 Speed St', 'Motorcity', 'MI', '48201'),
('Fashion Forward', '404 Style St', 'Trendtown', 'CA', '90210'),
('Home Builders', '505 Housing Dr', 'Homestead', 'GA', '30301'),
('Financial Services', '606 Money Blvd', 'Wealthville', 'NY', '10002'),
('Entertainment Hub', '707 Fun St', 'Entertainville', 'NV', '89101');
select * from Company;

INSERT INTO Contact (Company_ID, First_Name, Last_Name, Street, City, State, Zip, IsMain, Email, Phone) VALUES
(1, 'Alice', 'Johnson', '123 Innovation Dr', 'Techville', 'CA', '94016', TRUE, 'alice.johnson@techsolutions.com', '555-111-2222'),
(2, 'Bob', 'Smith', '456 Eco St', 'Greenville', 'TX', '75401', FALSE, 'bob.smith@greenenergy.com', '555-222-3333'),
(3, 'Carol', 'White', '789 Wellness Blvd', 'Healthtown', 'FL', '33101', TRUE, 'carol.white@healthplus.com', '555-333-4444'),
(4, 'David', 'Brown', '101 Learning Ln', 'Edutown', 'MA', '02101', FALSE, 'david.brown@educorp.com', '555-444-5555'),
(5, 'Eve', 'Davis', '202 Gourmet Rd', 'Flavorville', 'NY', '10001', TRUE, 'eve.davis@foodies.com', '555-555-6666'),
(6, 'Frank', 'Miller', '303 Speed St', 'Motorcity', 'MI', '48201', FALSE, 'frank.miller@automakers.com', '555-666-7777'),
(7, 'Grace', 'Wilson', '404 Style St', 'Trendtown', 'CA', '90210', TRUE, 'grace.wilson@fashionforward.com', '555-777-8888'),
(8, 'Henry', 'Moore', '505 Housing Dr', 'Homestead', 'GA', '30301', FALSE, 'henry.moore@homebuilders.com', '555-888-9999'),
(9, 'Ivy', 'Taylor', '606 Money Blvd', 'Wealthville', 'NY', '10002', TRUE, 'ivy.taylor@financialservices.com', '555-999-0000'),
(10, 'Jack', 'Anderson', '707 Fun St', 'Entertainville', 'NV', '89101', FALSE, 'jack.anderson@entertainmenthub.com', '555-000-1111');
 select * from Contact;
 
 INSERT INTO Contact_Employee (Contact_ID, Employee_ID, Contact_Date, Description) VALUES
(1, 101, 20230101, 'Discussed project requirements'),
(2, 102, 20230215, 'Reviewed contract details'),
(3, 103, 20230310, 'Finalized design specifications'),
(4, 104, 20230405, 'Checked on project progress'),
(5, 105, 20230520, 'Addressed technical issues'),
(6, 106, 20230625, 'Evaluated performance metrics'),
(7, 107, 20230730, 'Discussed new project opportunities'),
(8, 108, 20230815, 'Reviewed budget and expenses'),
(9, 109, 20230910, 'Provided project updates'),
(10, 110, 20231005, 'Finalized project deliverables');
select * from Contact_Employee;

INSERT INTO Employee (First_Name, Last_Name, Salary, Hire_Date, Job_Title, Email, Phone) VALUES
('John', 'Doe', 60000.00, '2021-01-15', 'Software Engineer', 'john.doe@gmail.com', '555-111-2222'),
('Jane', 'Smith', 75000.00, '2020-03-23', 'Project Manager', 'jane.smith@gmail.com', '555-222-3333'),
('Robert', 'Johnson', 50000.00, '2019-07-10', 'QA Engineer', 'robert.johnson@gmail.com', '555-333-4444'),
('Emily', 'Brown', 80000.00, '2018-11-30', 'Product Manager', 'emily.brown@gmail.com', '555-444-5555'),
('Michael', 'Davis', 95000.00, '2017-04-20', 'DevOps Engineer', 'michael.davis@gmail.com', '555-555-6666'),
('Sarah', 'Wilson', 70000.00, '2021-06-17', 'UI/UX Designer', 'sarah.wilson@gmail.com', '555-666-7777'),
('David', 'Moore', 65000.00, '2020-09-25', 'Business Analyst', 'david.moore@gmail.com', '555-777-8888'),
('Laura', 'Taylor', 72000.00, '2019-12-05', 'Scrum Master', 'laura.taylor@gmail.com', '555-888-9999'),
('James', 'Anderson', 54000.00, '2018-05-14', 'Technical Writer', 'james.anderson@gmail.com', '555-999-0000'),
('Linda', 'Thomas', 62000.00, '2020-08-01', 'System Administrator', 'linda.thomas@gmail.com', '555-000-1111');
select * from Employee;






