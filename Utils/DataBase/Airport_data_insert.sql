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
insert into passengers (passenger_first_name, passenger_second_name, passenger_last_name, gender, date_of_birth)
values 
("Teodor", "Todorov", "Ivanov", "Male", "2010-06-13"),
("Maria", "Georgieva", "Petrova", "Female", "1998-03-22"),
("Ivan", "Dimitrov", "Nikolov", "Male", "2005-09-15"),
("Elena", "Kirova", "Stoyanova", "Female", "2001-11-04"),
("Andrei", "Vasilev", "Petrov", "Male", "2003-02-28"),
("Sofia", "Stefanova", "Krasteva", "Female", "2008-08-10"),
("Nikolai", "Todorov", "Kolev", "Male", "1995-12-25"),
("Victoria", "Vasileva", "Nikolova", "Female", "2007-07-19"),
("Boris", "Alexiev", "Popov", "Male", "2000-01-30"),
("Diana", "Petrova", "Kamenova", "Female", "2002-10-05");

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
INSERT INTO documents(document_type_id, passenger_id, issue_date, expiration_date, country_code, document_number)
    VALUES
    (1, 1, '2010-10-10', '2020-10-10', 'BGR', '2133332'),
    (2, 1, '2014-10-10', '2020-11-20', 'BGR', '3133'),
    (1, 4, '2019-10-10', '2029-03-03', 'AFG', '12341'),
    (1, 3, '2013-10-10', '2028-04-06', 'DEU', '41341'),
    (1, 5, '2017-10-10', '2027-12-01', 'CHN', '444562');

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

INSERT INTO SeatsClass (seat_class_type)
VALUES 
	("Economy"),
	("First"),
    ("Business");
    
    
INSERT INTO SeatsClassCount (floor_id, seat_class_id, seat_count, total_rows, aisle_positions)
VALUES
    (1, 1, 150, 25, '3'),
    (1, 2, 20, 5, '2'),
    (1, 3, 30, 6, '3'),
    (2, 1, 180, 30, '2,4'),
    (2, 2, 25, 5, '3'),
    (2, 3, 40, 8, '2,5'),
    (3, 1, 200, 35, '3'),
    (3, 2, 15, 3, '2'),
    (3, 3, 25, 5, '4'),
    (4, 1, 220, 40, '2,4'),
    (4, 2, 50, 10, '3'),
    (4, 3, 60, 12, '2,5'),
    (5, 1, 250, 50, '3'),
    (5, 2, 40, 8, '2'),
    (5, 3, 70, 14, '3,6');

INSERT INTO AirplaneCompanies (company_iata, company_name)
VALUES
    ('BA', 'British Airways'),
    ('LH', 'Lufthansa'),
    ('AF', 'Air France'),
    ('EK', 'Emirates'),
    ('QR', 'Qatar Airways'),
    ('AA', 'American Airlines'),
    ('DL', 'Delta Air Lines'),
    ('UA', 'United Airlines'),
    ('CX', 'Cathay Pacific'),
    ('QF', 'Qantas');

INSERT INTO Airplanes (airplane_registration_number, airplane_type_id, company_iata)
VALUES
    ('G-BOAC', 1, 'BA'),
    ('D-ABCD', 2, 'LH'),
    ('F-GFKA', 3, 'AF'),
    ('A6-EDC', 4, 'EK'),
    ('A7-BAA', 5, 'QR'),
    ('N123AA', 6, 'AA'),
    ('N456DL', 7, 'DL'),
    ('N789UA', 8, 'UA'),
    ('B-HKF', 9, 'CX'),
    ('VH-OJB', 10, 'QF');

INSERT INTO BaggageTypes (baggage_type_id, baggage_type)
VALUES
    (1, '10kg'),
    (2, '15kg'),
    (3, '20kg'),
    (4, 'Carry-on');

INSERT INTO Flights (flight_id, flight_number, departure_time, arrival_time, airplane_registration_number, departure_airport, destination_airport, gate_id)
VALUES
    (1, 'BA101', '2025-01-10 10:00:00', '2025-01-10 13:00:00', 'G-BOAC', 'VAR', 'SOF', 5),
    (2, 'DL202', '2025-01-11 14:00:00', '2025-01-11 17:00:00', 'D-ABCD', 'SOF', 'VAR', 3),
    (3, 'AA303', '2025-01-12 08:00:00', '2025-01-12 12:00:00', 'F-GFKA', 'FRA', 'MUC', 7),
    (4, 'EK404', '2025-01-13 22:00:00', '2025-01-14 06:00:00', 'A6-EDC', 'KBL', 'CAN', NULL),
    (5, 'AF505', '2025-01-14 09:30:00', '2025-01-14 12:30:00', 'A7-BAA', 'CAN', 'KBL', 2),
    (6, 'CX606', '2025-01-15 18:00:00', '2025-01-16 06:00:00', 'N456DL', 'FRA', 'MUC', 4),
    (7, 'QF707', '2025-01-17 14:00:00', '2025-01-17 22:00:00', 'B-HKF', 'LGW', 'LHR', 6),
    (8, 'UA808', '2025-01-18 11:00:00', '2025-01-18 18:30:00', 'VH-OJB', 'SOF', 'CAN', NULL);

INSERT INTO Seats (seat_id, airplane_registration_number, seat_row, seat_column, is_available, seat_class_id) 
VALUES
    (1, 'G-BOAC', 1, 'A', 1, 1),
    (2, 'G-BOAC', 1, 'B', 0, 2),
    (3, 'G-BOAC', 2, 'A', 1, 1),
    (4, 'G-BOAC', 2, 'B', 1, 2),
    (5, 'G-BOAC', 3, 'A', 1, 1),
    (6, 'G-BOAC', 3, 'B', 0, 2),
    (7, 'G-BOAC', 4, 'A', 1, 1),
    (8, 'G-BOAC', 4, 'B', 1, 2),
    (9, 'G-BOAC', 5, 'A', 1, 1),
    (10, 'G-BOAC', 5, 'B', 1, 2),
    (11, 'G-BOAC', 6, 'A', 1, 1),
    (12, 'G-BOAC', 6, 'B', 0, 2),
    (13, 'G-BOAC', 7, 'A', 1, 1),
    (14, 'G-BOAC', 7, 'B', 1, 2),
    (15, 'G-BOAC', 8, 'A', 1, 1),
    (16, 'G-BOAC', 8, 'B', 1, 2),
    (17, 'G-BOAC', 9, 'A', 1, 1),
    (18, 'G-BOAC', 9, 'B', 0, 2),
    (19, 'G-BOAC', 10, 'A', 1, 1),
    (20, 'G-BOAC', 10, 'B', 1, 2),
    (21, 'G-BOAC', 11, 'A', 1, 1),
    (22, 'G-BOAC', 11, 'B', 1, 2),
    (23, 'G-BOAC', 12, 'A', 1, 1),
    (24, 'G-BOAC', 12, 'B', 0, 2),
    (25, 'G-BOAC', 13, 'A', 1, 1),
    (26, 'G-BOAC', 13, 'B', 1, 2),
    (27, 'G-BOAC', 14, 'A', 1, 1),
    (28, 'G-BOAC', 14, 'B', 1, 2),
    (29, 'G-BOAC', 15, 'A', 1, 1),
    (30, 'G-BOAC', 15, 'B', 1, 2),
    (31, 'G-BOAC', 16, 'A', 1, 1),
    (32, 'G-BOAC', 16, 'B', 0, 2),
    (33, 'G-BOAC', 17, 'A', 1, 1),
    (34, 'G-BOAC', 17, 'B', 1, 2),
    (35, 'G-BOAC', 18, 'A', 1, 1),
    (36, 'G-BOAC', 18, 'B', 1, 2),
    (37, 'G-BOAC', 19, 'A', 1, 1),
    (38, 'G-BOAC', 19, 'B', 0, 2),
    (39, 'G-BOAC', 20, 'A', 1, 1),
    (40, 'G-BOAC', 20, 'B', 1, 2),
    (41, 'G-BOAC', 21, 'A', 1, 1),
    (42, 'G-BOAC', 21, 'B', 1, 2),
    (43, 'G-BOAC', 22, 'A', 1, 1),
    (44, 'G-BOAC', 22, 'B', 0, 2),
    (45, 'G-BOAC', 23, 'A', 1, 1),
    (46, 'G-BOAC', 23, 'B', 1, 2),
    (47, 'G-BOAC', 24, 'A', 1, 1),
    (48, 'G-BOAC', 24, 'B', 1, 2),
    (49, 'G-BOAC', 25, 'A', 1, 1),
    (50, 'G-BOAC', 25, 'B', 0, 2),
    (51, 'D-ABCD', 1, 'A', 1, 1),
    (52, 'D-ABCD', 1, 'B', 0, 2),
    (53, 'D-ABCD', 2, 'A', 1, 1),
    (54, 'D-ABCD', 2, 'B', 1, 2),
    (55, 'D-ABCD', 3, 'A', 1, 1),
    (56, 'D-ABCD', 3, 'B', 0, 2),
    (57, 'D-ABCD', 4, 'A', 1, 1),
    (58, 'D-ABCD', 4, 'B', 1, 2),
    (59, 'D-ABCD', 5, 'A', 1, 1),
    (60, 'D-ABCD', 5, 'B', 1, 2),
    (61, 'D-ABCD', 6, 'A', 1, 1),
    (62, 'D-ABCD', 6, 'B', 0, 2),
    (63, 'D-ABCD', 7, 'A', 1, 1),
    (64, 'D-ABCD', 7, 'B', 1, 2),
    (65, 'D-ABCD', 8, 'A', 1, 1),
    (66, 'D-ABCD', 8, 'B', 1, 2),
    (67, 'D-ABCD', 9, 'A', 1, 1),
    (68, 'D-ABCD', 9, 'B', 0, 2),
    (69, 'D-ABCD', 10, 'A', 1, 1),
    (70, 'D-ABCD', 10, 'B', 1, 2),
    (71, 'D-ABCD', 11, 'A', 1, 1),
    (72, 'D-ABCD', 11, 'B', 1, 2),
    (73, 'D-ABCD', 12, 'A', 1, 1),
    (74, 'D-ABCD', 12, 'B', 0, 2),
    (75, 'D-ABCD', 13, 'A', 1, 1),
    (76, 'D-ABCD', 13, 'B', 1, 2),
    (77, 'D-ABCD', 14, 'A', 1, 1),
    (78, 'D-ABCD', 14, 'B', 1, 2),
    (79, 'D-ABCD', 15, 'A', 1, 1),
    (80, 'D-ABCD', 15, 'B', 1, 2),
    (81, 'D-ABCD', 16, 'A', 1, 1),
    (82, 'D-ABCD', 16, 'B', 0, 2),
    (83, 'D-ABCD', 17, 'A', 1, 1),
    (84, 'D-ABCD', 17, 'B', 1, 2),
    (85, 'D-ABCD', 18, 'A', 1, 1),
    (86, 'D-ABCD', 18, 'B', 1, 2),
    (87, 'D-ABCD', 19, 'A', 1, 1),
    (88, 'D-ABCD', 19, 'B', 0, 2),
    (89, 'D-ABCD', 20, 'A', 1, 1),
    (90, 'D-ABCD', 20, 'B', 1, 2),
    (91, 'D-ABCD', 21, 'A', 1, 1),
    (92, 'D-ABCD', 21, 'B', 1, 2),
    (93, 'D-ABCD', 22, 'A', 1, 1),
    (94, 'D-ABCD', 22, 'B', 0, 2),
    (95, 'D-ABCD', 23, 'A', 1, 1),
    (96, 'D-ABCD', 23, 'B', 1, 2),
    (97, 'D-ABCD', 24, 'A', 1, 1),
    (98, 'D-ABCD', 24, 'B', 1, 2),
    (99, 'D-ABCD', 25, 'A', 1, 1),
    (100, 'D-ABCD', 25, 'B', 0, 2);

INSERT INTO Seats (seat_id, airplane_registration_number, seat_row, seat_column, is_available, seat_class_id)
VALUES
    (101, 'F-GFKA', 1, 'B', 0, 2),
    (102, 'F-GFKA', 2, 'A', 1, 1),
    (103, 'F-GFKA', 2, 'B', 1, 2),
    (104, 'F-GFKA', 3, 'A', 1, 1),
    (105, 'F-GFKA', 3, 'B', 0, 2),
    (106, 'F-GFKA', 4, 'A', 1, 1),
    (107, 'F-GFKA', 4, 'B', 1, 2),
    (108, 'A6-EDC', 1, 'A', 1, 1),
    (109, 'A6-EDC', 1, 'B', 0, 2),
    (110, 'A6-EDC', 2, 'A', 1, 1),
    (111, 'A6-EDC', 2, 'B', 1, 2),
    (112, 'A6-EDC', 3, 'A', 1, 1),
    (113, 'A6-EDC', 3, 'B', 0, 2),
    (114, 'A6-EDC', 4, 'A', 1, 1),
    (115, 'A6-EDC', 4, 'B', 1, 2),
    (116, 'A7-BAA', 1, 'A', 1, 1),
    (117, 'A7-BAA', 1, 'B', 0, 2),
    (118, 'A7-BAA', 2, 'A', 1, 1),
    (119, 'A7-BAA', 2, 'B', 1, 2),
    (120, 'A7-BAA', 3, 'A', 1, 1),
    (121, 'A7-BAA', 3, 'B', 0, 2),
    (122, 'A7-BAA', 4, 'A', 1, 1),
    (123, 'A7-BAA', 4, 'B', 1, 2),
    (124, 'N123AA', 1, 'A', 1, 1),
    (125, 'N123AA', 1, 'B', 0, 2),
    (126, 'N123AA', 2, 'A', 1, 1),
    (127, 'N123AA', 2, 'B', 1, 2),
    (128, 'N123AA', 3, 'A', 1, 1),
    (129, 'N123AA', 3, 'B', 0, 2),
    (130, 'N123AA', 4, 'A', 1, 1),
    (131, 'N123AA', 4, 'B', 1, 2),
    (132, 'N456DL', 1, 'A', 1, 1),
    (133, 'N456DL', 1, 'B', 0, 2),
    (134, 'N456DL', 2, 'A', 1, 1),
    (135, 'N456DL', 2, 'B', 1, 2),
    (136, 'N456DL', 3, 'A', 1, 1),
    (137, 'N456DL', 3, 'B', 0, 2),
    (138, 'N456DL', 4, 'A', 1, 1),
    (139, 'N456DL', 4, 'B', 1, 2),
    (140, 'N789UA', 1, 'A', 1, 1),
    (141, 'N789UA', 1, 'B', 0, 2),
    (142, 'N789UA', 2, 'A', 1, 1),
    (143, 'N789UA', 2, 'B', 1, 2),
    (144, 'N789UA', 3, 'A', 1, 1),
    (145, 'N789UA', 3, 'B', 0, 2),
    (146, 'N789UA', 4, 'A', 1, 1),
    (147, 'N789UA', 4, 'B', 1, 2),
    (148, 'B-HKF', 1, 'A', 1, 1),
    (149, 'B-HKF', 1, 'B', 0, 2),
    (150, 'B-HKF', 2, 'A', 1, 1),
    (151, 'B-HKF', 2, 'B', 1, 2),
    (152, 'B-HKF', 3, 'A', 1, 1),
    (153, 'B-HKF', 3, 'B', 0, 2),
    (154, 'B-HKF', 4, 'A', 1, 1),
    (155, 'B-HKF', 4, 'B', 1, 2),
    (156, 'VH-OJB', 1, 'A', 1, 1),
    (157, 'VH-OJB', 1, 'B', 0, 2),
    (158, 'VH-OJB', 2, 'A', 1, 1),
    (159, 'VH-OJB', 2, 'B', 1, 2),
    (160, 'VH-OJB', 3, 'A', 1, 1),
    (161, 'VH-OJB', 3, 'B', 0, 2),
    (162, 'VH-OJB', 4, 'A', 1, 1),
    (163, 'VH-OJB', 4, 'B', 1, 2);

INSERT INTO BaggagePrices (baggage_type_id, company_iata, airport_price, online_price, price_per_kg)
VALUES
    (1, 'BA', 50, 40, 10),
    (2, 'BA', 45, 35, 10),
    (3, 'BA', 20, 15, 10),
    (1, 'EK', 60, 45, 12),
    (2, 'EK', 60, 45, 12),
    (3, 'EK', 60, 32, 12),
    (1, 'LH', 50, 40, 10),
    (2, 'LH', 45, 35, 10),
    (3, 'LH', 20, 15, 10),
    (1, 'AF', 60, 50, 15),
    (2, 'AF', 45, 50, 15),
    (3, 'AF', 45, 50, 15),
    (1, 'UA', 60, 43, 20),
    (2, 'UA', 43, 43, 20),
    (3, 'UA', 45, 23, 20),
    (1, 'QF', 60, 50, 12),
    (2, 'QF', 45, 50, 12),
    (3, 'QF', 12, 50, 12),
    (4, 'QF', 45, 12, 12);
	
INSERT INTO BaggageStatus (baggage_status_id, baggage_status)
VALUES
    (1, 'Checked-in'),
    (2, 'Onboard'),
    (3, 'Lost'),
    (4, 'Claimed');


INSERT INTO CheckIns (checkin_id, passenger_id, flight_id, seat_id, employee_id)
VALUES
    (1, 1, 1, 1, 1),
    (2, 2, 2, 2, 2),
    (3, 3, 3, 3, 3),
    (4, 4, 4, 4, 4),
    (5, 5, 5, 5, 5),
    (6, 6, 6, 6, 1),
    (7, 7, 7, 7, 2),
    (8, 8, 8, 8, 3),
    (9, 9, 2, 9, 4),
    (10, 10, 8, 10, 5);

INSERT INTO Baggages (baggage_id, checkin_id, baggage_type_id, weight, baggage_status_id, paid)
VALUES
    (1, 1, 1, 20, 1, 1),
    (2, 2, 2, 15, 2, 0),
    (3, 3, 3, 10, 1, 1),
    (4, 4, 4, 25, 3, 1);


INSERT INTO Baggages (baggage_id, checkin_id, baggage_type_id, weight, baggage_status_id, paid)
VALUES
    (1, 1, 1, 23.5, 1, 1),
    (2, 2, 2, 18.0, 2, 0),
    (3, 3, 3, 10.0, 3, 1),
    (4, 4, 1, 25.5, 1, 0),
    (5, 5, 2, 22.0, 2, 1),
    (6, 6, 3, 15.0, 3, 0),
    (7, 7, 1, 20.0, 1, 1),
    (8, 8, 2, 30.0, 2, 0),
    (9, 9, 3, 12.5, 3, 1),
    (10, 10, 1, 28.0, 1, 0);

    
