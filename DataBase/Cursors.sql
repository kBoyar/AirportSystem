DELIMITER $$

CREATE PROCEDURE GetPassengerDetails()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE passenger_first_name VARCHAR(25);
    DECLARE passenger_second_name VARCHAR(25);
    DECLARE passenger_last_name VARCHAR(25);
    DECLARE gender ENUM('Male', 'Female', 'Other');
    DECLARE passenger_cursor CURSOR FOR
        SELECT passenger_first_name, passenger_second_name, passenger_last_name, gender
        FROM Passengers;

  
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN passenger_cursor;

        read_loop: LOOP
        FETCH passenger_cursor INTO passenger_first_name, passenger_second_name, passenger_last_name, gender;
        IF done THEN
            LEAVE read_loop;
        END IF;

       
        SELECT passenger_first_name, passenger_second_name, passenger_last_name, gender;

    END LOOP;

    CLOSE passenger_cursor;
END $$

DELIMITER ;



DELIMITER $$

CREATE PROCEDURE GetBaggageDetails()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE baggage_id INT;
    DECLARE baggage_type_id INT;
    DECLARE weight DECIMAL(10, 2);
    DECLARE baggage_status_id INT;
    DECLARE baggage_cursor CURSOR FOR
        SELECT baggage_id, baggage_type_id, weight, baggage_status_id
        FROM Baggages;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN baggage_cursor;

    read_loop: LOOP
        FETCH baggage_cursor INTO baggage_id, baggage_type_id, weight, baggage_status_id;
        IF done THEN
            LEAVE read_loop;
        END IF;

        SELECT baggage_id, baggage_type_id, weight, baggage_status_id;

    END LOOP;

    CLOSE baggage_cursor;
END $$

DELIMITER ;




DELIMITER $$

CREATE PROCEDURE GetDocumentDetails()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE document_id INT;
    DECLARE document_type_id INT;
    DECLARE passenger_id INT;
    DECLARE issue_date DATE;
    DECLARE expiration_date DATE;
    DECLARE country_code VARCHAR(3);
    DECLARE document_number VARCHAR(20);

    DECLARE document_cursor CURSOR FOR 
        SELECT document_id, document_type_id, passenger_id, issue_date, expiration_date, country_code, document_number
        FROM airport.Documents;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN document_cursor;
    
    read_loop: LOOP
        FETCH document_cursor INTO document_id, document_type_id, passenger_id, issue_date, expiration_date, country_code, document_number;
        
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        SELECT document_id, document_type_id, passenger_id, issue_date, expiration_date, country_code, document_number;
    END LOOP;

    CLOSE document_cursor;
END$$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE GetAirplaneDetails()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE airplane_id INT;
    DECLARE registration_number VARCHAR(20);
    DECLARE model_name VARCHAR(50);
    DECLARE seat_capacity INT;
    DECLARE manufacturer_name VARCHAR(50);
    DECLARE airplane_status ENUM('Active', 'Inactive');

    DECLARE airplane_cursor CURSOR FOR 
        SELECT airplane_id, registration_number, model_name, seat_capacity, manufacturer_name, airplane_status
        FROM airport.Airplanes;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN airplane_cursor;
    
    read_loop: LOOP
        FETCH airplane_cursor INTO airplane_id, registration_number, model_name, seat_capacity, manufacturer_name, airplane_status;
        
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        SELECT airplane_id, registration_number, model_name, seat_capacity, manufacturer_name, airplane_status;
    END LOOP;

    CLOSE airplane_cursor;
END$$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE GetSeatDetails()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE seat_id INT;
    DECLARE airplane_id INT;
    DECLARE seat_number VARCHAR(10);
    DECLARE seat_class ENUM('Economy', 'Business', 'First');
    DECLARE is_occupied BOOLEAN;

    DECLARE seat_cursor CURSOR FOR 
        SELECT seat_id, airplane_id, seat_number, seat_class, is_occupied
        FROM airport.Seats;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN seat_cursor;
    
    read_loop: LOOP
        FETCH seat_cursor INTO seat_id, airplane_id, seat_number, seat_class, is_occupied;
        
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        SELECT seat_id, airplane_id, seat_number, seat_class, is_occupied;
    END LOOP;

    CLOSE seat_cursor;
END$$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE GetTicketDetails()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE ticket_id INT;
    DECLARE passenger_id INT;
    DECLARE flight_id INT;
    DECLARE seat_id INT;
    DECLARE ticket_price DECIMAL(10, 2);
    DECLARE ticket_status ENUM('Booked', 'Cancelled', 'Checked-In');

    DECLARE ticket_cursor CURSOR FOR 
        SELECT ticket_id, passenger_id, flight_id, seat_id, ticket_price, ticket_status
        FROM airport.Tickets;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN ticket_cursor;
    
    read_loop: LOOP
        FETCH ticket_cursor INTO ticket_id, passenger_id, flight_id, seat_id, ticket_price, ticket_status;
        
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        SELECT ticket_id, passenger_id, flight_id, seat_id, ticket_price, ticket_status;
    END LOOP;

    CLOSE ticket_cursor;
END$$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE GetAirportDetails()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE airport_id INT;
    DECLARE airport_code CHAR(3);
    DECLARE airport_name VARCHAR(100);
    DECLARE airport_location VARCHAR(200);

    DECLARE airport_cursor CURSOR FOR 
        SELECT airport_id, airport_code, airport_name, airport_location
        FROM airport.Airports;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN airport_cursor;
    
    read_loop: LOOP
        FETCH airport_cursor INTO airport_id, airport_code, airport_name, airport_location;
        
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        SELECT airport_id, airport_code, airport_name, airport_location;
    END LOOP;

    CLOSE airport_cursor;
END$$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE GetFlightDetails()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE flight_id INT;
    DECLARE departure_time DATETIME;
    DECLARE arrival_time DATETIME;
    DECLARE flight_status ENUM('On Time', 'Delayed', 'Cancelled');

    DECLARE flight_cursor CURSOR FOR 
        SELECT flight_id, departure_time, arrival_time, flight_status
        FROM airport.Flights;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN flight_cursor;
    
    read_loop: LOOP
        FETCH flight_cursor INTO flight_id, departure_time, arrival_time, flight_status;
        
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        IF flight_status = 'Delayed' THEN
            -- Ако полетът е закъснял, правим нещо
            UPDATE airport.Flights
            SET flight_status = 'Rescheduled'
            WHERE flight_id = flight_id;
        END IF;
        
        SELECT flight_id, departure_time, arrival_time, flight_status;
    END LOOP;

    CLOSE flight_cursor;
END$$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE GetDocumentTypesDetails()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE document_type_id INT;
    DECLARE document_name VARCHAR(255);
    DECLARE is_active BOOLEAN;

    DECLARE document_cursor CURSOR FOR 
        SELECT document_type_id, document_name, is_active
        FROM airport.DocumentTypes;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN document_cursor;
    
    read_loop: LOOP
        FETCH document_cursor INTO document_type_id, document_name, is_active;
        
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        IF is_active = TRUE THEN
            UPDATE airport.DocumentTypes
            SET document_name = CONCAT(document_name, ' (Updated)')
            WHERE document_type_id = document_type_id;
        END IF;
        
        SELECT document_type_id, document_name, is_active;
    END LOOP;

    CLOSE document_cursor;
END$$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE GetCountriesDetails()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE country_id INT;
    DECLARE country_name VARCHAR(255);
    DECLARE is_active BOOLEAN;

    DECLARE country_cursor CURSOR FOR 
        SELECT country_id, country_name, is_active
        FROM airport.Countries;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN country_cursor;
    
    read_loop: LOOP
        FETCH country_cursor INTO country_id, country_name, is_active;
        
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        IF is_active = TRUE THEN
            UPDATE airport.Countries
            SET country_name = CONCAT(country_name, ' (Active)')
            WHERE country_id = country_id;
        END IF;
        
        SELECT country_id, country_name, is_active;
    END LOOP;

    CLOSE country_cursor;
END$$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE GetAirplaneTypesDetails()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE airplane_type_id INT;
    DECLARE airplane_type_name VARCHAR(255);
    DECLARE capacity INT;

    DECLARE airplane_cursor CURSOR FOR 
        SELECT airplane_type_id, airplane_type_name, capacity
        FROM airport.AirplaneTypes;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN airplane_cursor;
    
    read_loop: LOOP
        FETCH airplane_cursor INTO airplane_type_id, airplane_type_name, capacity;
        
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        IF capacity > 200 THEN
            UPDATE airport.AirplaneTypes
            SET airplane_type_name = CONCAT(airplane_type_name, ' - Large Capacity')
            WHERE airplane_type_id = airplane_type_id;
        END IF;
        
        SELECT airplane_type_id, airplane_type_name, capacity;
    END LOOP;

    CLOSE airplane_cursor;
END$$

DELIMITER ;



DELIMITER $$

CREATE PROCEDURE GetAirplaneCompaniesDetails()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE company_iata CHAR(2);
    DECLARE company_name VARCHAR(45);

    DECLARE company_cursor CURSOR FOR 
        SELECT company_iata, company_name
        FROM airport.AirplaneCompanies;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN company_cursor;
    
    read_loop: LOOP
        FETCH company_cursor INTO company_iata, company_name;
        
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        SELECT company_iata, company_name;
    END LOOP;

    CLOSE company_cursor;
END$$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE GetFloorsDetails()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE floor_id INT;
    DECLARE airplane_type_id INT;
    DECLARE floor_number INT;

    DECLARE floor_cursor CURSOR FOR 
        SELECT floor_id, airplane_type_id, floor_number
        FROM airport.floors;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN floor_cursor;
    
    read_loop: LOOP
        FETCH floor_cursor INTO floor_id, airplane_type_id, floor_number;
        
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        SELECT floor_id, airplane_type_id, floor_number;
    END LOOP;

    CLOSE floor_cursor;
END$$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE GetSeatsClassDetails()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE seat_class_id INT;
    DECLARE seat_class_type VARCHAR(45);

    DECLARE seats_class_cursor CURSOR FOR 
        SELECT seat_class_id, seat_class_type
        FROM airport.SeatsClass;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN seats_class_cursor;
    
    read_loop: LOOP
        FETCH seats_class_cursor INTO seat_class_id, seat_class_type;
        
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        SELECT seat_class_id, seat_class_type;
    END LOOP;

    CLOSE seats_class_cursor;
END$$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE GetTerminalsDetails()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE terminal_id INT;
    DECLARE terminal_number VARCHAR(10);
    DECLARE airport_iata CHAR(3);

    DECLARE terminals_cursor CURSOR FOR 
        SELECT terminal_id, terminal_number, airport_iata
        FROM airport.Terminals;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN terminals_cursor;
    
    read_loop: LOOP
        FETCH terminals_cursor INTO terminal_id, terminal_number, airport_iata;
        
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        SELECT terminal_id, terminal_number, airport_iata;
    END LOOP;

    CLOSE terminals_cursor;
END$$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE GetGatesDetails()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE gate_id INT;
    DECLARE gate_number VARCHAR(10);
    DECLARE terminal_id INT;

    DECLARE gates_cursor CURSOR FOR 
        SELECT gate_id, gate_number, terminal_id
        FROM airport.Gates;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN gates_cursor;
    
    read_loop: LOOP
        FETCH gates_cursor INTO gate_id, gate_number, terminal_id;
        
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        SELECT gate_id, gate_number, terminal_id;
    END LOOP;

    CLOSE gates_cursor;
END$$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE GetPositionTypesDetails()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE position_id INT;
    DECLARE position_type VARCHAR(40);

    DECLARE position_types_cursor CURSOR FOR 
        SELECT position_id, position_type
        FROM airport.PositionTypes;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN position_types_cursor;
    
    read_loop: LOOP
        FETCH position_types_cursor INTO position_id, position_type;
        
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        SELECT position_id, position_type;
    END LOOP;

    CLOSE position_types_cursor;
END$$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE GetEmployeesDetails()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE employee_id INT;
    DECLARE employee_firstname VARCHAR(25);
    DECLARE employee_lastname VARCHAR(25);
    DECLARE position_id INT;

    DECLARE employees_cursor CURSOR FOR 
        SELECT employee_id, employee_firstname, employee_lastname, position_id
        FROM airport.Employees;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN employees_cursor;
    
    read_loop: LOOP
        FETCH employees_cursor INTO employee_id, employee_firstname, employee_lastname, position_id;
        
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        SELECT employee_id, employee_firstname, employee_lastname, position_id;
    END LOOP;

    CLOSE employees_cursor;
END$$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE GetCheckInsDetails()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE checkin_id INT;
    DECLARE passenger_id INT;
    DECLARE flight_id INT;
    DECLARE seat_id INT;
    DECLARE employee_id INT;

    DECLARE checkins_cursor CURSOR FOR 
        SELECT checkin_id, passenger_id, flight_id, seat_id, employee_id
        FROM airport.CheckIns;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN checkins_cursor;
    
    read_loop: LOOP
        FETCH checkins_cursor INTO checkin_id, passenger_id, flight_id, seat_id, employee_id;
        
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        SELECT checkin_id, passenger_id, flight_id, seat_id, employee_id;
    END LOOP;

    CLOSE checkins_cursor;
END$$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE GetEmployeePasswordsDetails()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE password_id INT;
    DECLARE employee_id INT;
    DECLARE password VARCHAR(255);

    DECLARE passwords_cursor CURSOR FOR 
        SELECT password_id, employee_id, password
        FROM airport.EmployeePasswords;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN passwords_cursor;
    
    read_loop: LOOP
        FETCH passwords_cursor INTO password_id, employee_id, password;
        
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        SELECT password_id, employee_id, password;
    END LOOP;

    CLOSE passwords_cursor;
END$$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE GetBaggageStatusDetails()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE baggage_status_id INT;
    DECLARE baggage_status VARCHAR(45);

    DECLARE baggage_status_cursor CURSOR FOR 
        SELECT baggage_status_id, baggage_status
        FROM airport.BaggageStatus;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN baggage_status_cursor;
    
    read_loop: LOOP
        FETCH baggage_status_cursor INTO baggage_status_id, baggage_status;
        
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        SELECT baggage_status_id, baggage_status;
    END LOOP;

    CLOSE baggage_status_cursor;
END$$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE GetBaggageTypesDetails()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE baggage_type_id INT;
    DECLARE baggage_type VARCHAR(40);

    DECLARE baggage_types_cursor CURSOR FOR 
        SELECT baggage_type_id, baggage_type
        FROM airport.BaggageTypes;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN baggage_types_cursor;
    
    read_loop: LOOP
        FETCH baggage_types_cursor INTO baggage_type_id, baggage_type;
        
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        -- Извеждаме данните за всеки ред
        SELECT baggage_type_id, baggage_type;
    END LOOP;

    CLOSE baggage_types_cursor;
END$$

DELIMITER ;



DELIMITER $$

CREATE PROCEDURE GetSeatsClassCountDetails()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE floor_id INT;
    DECLARE seat_class_id INT;
    DECLARE seat_count INT;
    DECLARE total_rows INT;
    DECLARE aisle_positions VARCHAR(30);

    DECLARE seats_class_count_cursor CURSOR FOR 
        SELECT floor_id, seat_class_id, seat_count, total_rows, aisle_positions
        FROM airport.SeatsClassCount;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN seats_class_count_cursor;
    
    read_loop: LOOP
        FETCH seats_class_count_cursor INTO floor_id, seat_class_id, seat_count, total_rows, aisle_positions;
        
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        SELECT floor_id, seat_class_id, seat_count, total_rows, aisle_positions;
    END LOOP;

    CLOSE seats_class_count_cursor;
END$$

DELIMITER ;



DELIMITER $$

CREATE PROCEDURE GetBaggagePricesDetails()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE baggage_type_id INT;
    DECLARE company_iata CHAR(2);
    DECLARE airport_price INT;
    DECLARE online_price INT;
    DECLARE price_per_kg INT;

    DECLARE baggage_prices_cursor CURSOR FOR 
        SELECT baggage_type_id, company_iata, airport_price, online_price, price_per_kg
        FROM airport.BaggagePrices;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN baggage_prices_cursor;
    
    read_loop: LOOP
        FETCH baggage_prices_cursor INTO baggage_type_id, company_iata, airport_price, online_price, price_per_kg;
        
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        SELECT baggage_type_id, company_iata, airport_price, online_price, price_per_kg;
    END LOOP;

    CLOSE baggage_prices_cursor;
END$$

DELIMITER ;



