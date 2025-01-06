USE airport;
insert into documenttypes(document_type) values("Passport");
insert into documenttypes(document_type) values("ID CARD");

insert into passengers(passenger_first_name,passenger_second_name,passenger_last_name,gender,date_of_birth)
			values ("Kristiyan","Yuliyanov","Boyarov","Male","2002-01-10");
insert into passengers(passenger_first_name,passenger_second_name,passenger_last_name,gender,date_of_birth)
			values ("Julia","Saleh","Sunalah","Female","2002-10-31");
insert into passengers(passenger_first_name,passenger_second_name,passenger_last_name,gender,date_of_birth)
			values ("Jordan","Jordanov","Jordanov","Male","2002-10-1");
insert into passengers(passenger_first_name,passenger_second_name,passenger_last_name,gender,date_of_birth)
			values ("Persia","Petrova","Velikova","Female","1992-04-18");
insert into passengers(passenger_first_name,passenger_second_name,passenger_last_name,gender,date_of_birth)
			values ("Teodor","Todorov","Ivanov","Male","2010-06-13");

INSERT INTO countries(country_code,country_name)
			values ('AFG','Afghanistan');
INSERT INTO countries(country_code,country_name)
			values ('DEU','Germany');
INSERT INTO countries(country_code,country_name)
			values ('BGR','Bulgaria');
INSERT INTO countries(country_code,country_name)
			values ('CHN','China');
INSERT INTO countries(country_code,country_name)
			values ('GBR','Great Britain');



INSERT INTO documents(document_type_id,passenger_id,issue_date,expiration_date,country_code,document_number)
			values (1,1,'2010-10-10','2020-10-10','BGR','2133332');
INSERT INTO documents(document_type_id,passenger_id,issue_date,expiration_date,country_code,document_number)
			values (2,1,'2014-10-10','2020-11-20','BGR','3133');
INSERT INTO documents(document_type_id,passenger_id,issue_date,expiration_date,country_code,document_number)
			values (1,4,'2019-10-10','2029-03-03','AFG','12341');
INSERT INTO documents(document_type_id,passenger_id,issue_date,expiration_date,country_code,document_number)
			values (1,3,'2013-10-10','2028-04-06','DEU','41341');
INSERT INTO documents(document_type_id,passenger_id,issue_date,expiration_date,country_code,document_number)
			values (1,5,'2017-10-10','2027-12-01','CHN','444562');


INSERT INTO airports (airport_iata, airport_name, city, country_code) VALUES
('SOF', 'Sofia Airport', 'Sofia', 'BGR'),
('VAR', 'Varna Airport', 'Varna', 'BGR'),
('FRA', 'Frankfurt Intl', 'Frankfurt', 'DEU'),
('MUC', 'Munich Airport', 'Munich', 'DEU'),
('KBL', 'Kabul Intl', 'Kabul', 'AFG'),
('CAN', 'Guangzhou Baiyun Intl', 'Guangzhou', 'CHN'),
('PEK', 'Beijing Capital Intl', 'Beijing', 'CHN'),
('LHR', 'London Heathrow', 'London', 'GBR'),
('LGW', 'London Gatwick', 'London', 'GBR');

INSERT INTO terminals (terminal_number, airport_iata) VALUES
('T1', 'SOF'),
('T2', 'SOF'),
('T1', 'VAR'),
('T1', 'FRA'),
('T2', 'FRA'),
('T1', 'MUC'),
('T2', 'MUC'),
('T1', 'KBL'),
('T1', 'CAN'),
('T2', 'CAN'),
('T1', 'PEK'),
('T2', 'PEK'),
('T3', 'PEK'),
('T1', 'LHR'),
('T2', 'LHR'),
('T3', 'LHR'),
('T1', 'LGW'),
('T2', 'LGW');


INSERT INTO gates (gate_number, terminal_id) VALUES
('A1', 1),
('A2', 1),
('B1', 1),
('B2', 2),
('C1', 2),
('A1', 3),
('A2', 3),
('C1', 4),
('C2', 4),
('D1', 5),
('D2', 5),
('E1', 6),
('E2', 6),
('F1', 7),
('F2', 7),
('G1', 8),
('H1', 9),
('H2', 9),
('J1', 10),
('J2', 10),
('K1', 11),
('K2', 12),
('L1', 13),
('L2', 13),
('M1', 14),
('M2', 14),
('N1', 15),
('N2', 15),
('P1', 16),
('P2', 16),
('Q1', 17),
('R1', 18);


INSERT INTO PositionTypes (position_id, position_type) VALUES
(1, 'Manager'),
(2, 'Check-in Agent'),
(3, 'Security Officer'),
(4, 'Technician');

INSERT INTO Employees (employee_id, employee_firstname, employee_lastname, position_id) VALUES
(1, 'John', 'Doe', 1),
(2, 'Jane', 'Smith', 2),
(3, 'Mark', 'Johnson', 3),
(4, 'Emily', 'Brown', 2),
(5, 'Robert', 'Davis', 4);

INSERT INTO EmployeePasswords (password_id, employee_id, password) VALUES
(1, 1, SHA2('password123', 256)),
(2, 2, SHA2('securepass456', 256)),
(3, 3, SHA2('qwerty789', 256)),
(4, 4, SHA2('pass2024', 256)),
(5, 5, SHA2('techpass001', 256));

INSERT INTO AirplaneTypes (model_type, manufacture)
VALUES 
    ('Boeing 737', 'Boeing'),
    ('Airbus A320', 'Airbus'),
    ('Embraer E175', 'Embraer'),
    ('Boeing 747', 'Boeing'),
    ('Airbus A330', 'Airbus'),
    ('Bombardier CRJ900', 'Bombardier'),
    ('Tupolev Tu-154', 'Tupolev'),
    ('Fokker 100', 'Fokker'),
    ('Boeing 787', 'Boeing'),
    ('Airbus A380', 'Airbus'),
    ('McDonnell Douglas MD-80', 'McDonnell Douglas'),
    ('Saab 340', 'Saab'),
    ('Ilyushin Il-96', 'Ilyushin'),
    ('Antonov An-124', 'Antonov'),
    ('Cessna 172', 'Cessna');

INSERT INTO Floors (airplane_type_id, floor_number)
VALUES 
    (1, 1),
    (2, 1),
    (3, 1),
    (4, 1),
    (5, 1),
    (6, 1),
    (7, 1),
    (8, 1),
    (9, 1),
    (10, 1),
    (11, 1),
    (12, 1),
    (13, 1),
    (14, 1),
    (15, 1),
    (4, 2),
    (5, 2),
    (6, 2),
    (7, 2),
    (8, 2),
    (9, 2),
    (10, 2),
    (11, 2),
    (12, 2),
    (13, 2),
    (14, 2),
    (15, 2);
select * from passengers;