DELIMITER $$

CREATE PROCEDURE InsertPassenger(
    IN firstName VARCHAR(25),
    IN secondName VARCHAR(25),
    IN lastName VARCHAR(25),
    IN gender ENUM('Male', 'Female', 'Other'),
    IN dateOfBirth DATE
)
BEGIN
    INSERT INTO `airport`.`Passengers` (
        `passenger_first_name`, 
        `passenger_second_name`, 
        `passenger_last_name`, 
        `gender`, 
        `date_of_birth`
    )
    VALUES (
        firstName, 
        secondName, 
        lastName, 
        gender, 
        dateOfBirth
    );
END$$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `UpdatePassenger` (
    IN p_passenger_id INT,
    IN p_first_name VARCHAR(25),
    IN p_second_name VARCHAR(25),
    IN p_last_name VARCHAR(25),
    IN p_gender ENUM('Male', 'Female', 'Other'),
    IN p_date_of_birth DATE
)
BEGIN
    UPDATE `Passengers`
    SET 
        `passenger_first_name` = p_first_name,
        `passenger_second_name` = p_second_name,
        `passenger_last_name` = p_last_name,
        `gender` = p_gender,
        `date_of_birth` = p_date_of_birth
    WHERE `passenger_id` = p_passenger_id;
END$$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `InsertDocumentType` (
    IN p_document_type VARCHAR(15)
)
BEGIN
    INSERT INTO `DocumentTypes` (`document_type`)
    VALUES (p_document_type);
END$$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `UpdateDocumentType` (
    IN p_document_type_id INT,
    IN p_document_type VARCHAR(15)
)
BEGIN
    UPDATE `DocumentTypes`
    SET 
        `document_type` = p_document_type
    WHERE 
        `document_type_id` = p_document_type_id;
END$$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `InsertCountry`(
    IN p_country_code VARCHAR(3),
    IN p_country_name VARCHAR(45)
)
BEGIN
    INSERT INTO `airport`.`Countries` (`country_code`, `country_name`)
    VALUES (p_country_code, p_country_name);
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `UpdateCountry`(
    IN p_country_code VARCHAR(3),
    IN p_country_name VARCHAR(45)
)
BEGIN
    UPDATE `airport`.`Countries`
    SET `country_name` = p_country_name
    WHERE `country_code` = p_country_code;
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `InsertDocument`(
    IN p_document_type_id INT,
    IN p_passenger_id INT,
    IN p_issue_date DATE,
    IN p_expiration_date DATE,
    IN p_country_code VARCHAR(3),
    IN p_document_number VARCHAR(20)
)
BEGIN
    INSERT INTO `airport`.`Documents` 
    (`document_type_id`, `passenger_id`, `issue_date`, `expiration_date`, `country_code`, `document_number`)
    VALUES (p_document_type_id, p_passenger_id, p_issue_date, p_expiration_date, p_country_code, p_document_number);
END $$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE `UpdateDocument`(
    IN p_document_id INT,
    IN p_document_type_id INT,
    IN p_passenger_id INT,
    IN p_issue_date DATE,
    IN p_expiration_date DATE,
    IN p_country_code VARCHAR(3),
    IN p_document_number VARCHAR(20)
)
BEGIN
    UPDATE `airport`.`Documents`
    SET 
        `document_type_id` = p_document_type_id,
        `passenger_id` = p_passenger_id,
        `issue_date` = p_issue_date,
        `expiration_date` = p_expiration_date,
        `country_code` = p_country_code,
        `document_number` = p_document_number
    WHERE `document_id` = p_document_id;
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `InsertAirplaneType`(
    IN p_model_type VARCHAR(30),
    IN p_manufacture VARCHAR(100)
)
BEGIN
    INSERT INTO `airport`.`AirplaneTypes` (`model_type`, `manufacture`)
    VALUES (p_model_type, p_manufacture);
END $$

DELIMITER ;



DELIMITER $$

CREATE PROCEDURE `UpdateAirplaneType`(
    IN p_airplane_type_id INT,
    IN p_model_type VARCHAR(30),
    IN p_manufacture VARCHAR(100)
)
BEGIN
    UPDATE `airport`.`AirplaneTypes`
    SET 
        `model_type` = p_model_type,
        `manufacture` = p_manufacture
    WHERE `airplane_type_id` = p_airplane_type_id;
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `InsertAirplaneCompany`(
    IN p_company_iata CHAR(2),
    IN p_company_name VARCHAR(45)
)
BEGIN
    INSERT INTO `airport`.`AirplaneCompanies` (`company_iata`, `company_name`)
    VALUES (p_company_iata, p_company_name);
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `UpdateAirplaneCompany`(
    IN p_company_iata CHAR(2),
    IN p_company_name VARCHAR(45)
)
BEGIN
    UPDATE `airport`.`AirplaneCompanies`
    SET 
        `company_name` = p_company_name
    WHERE `company_iata` = p_company_iata;
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `InsertAirplane`(
    IN p_airplane_registration_number VARCHAR(20),
    IN p_airplane_type_id INT,
    IN p_company_iata CHAR(2)
)
BEGIN
    INSERT INTO `airport`.`Airplanes` 
    (`airplane_registration_number`, `airplane_type_id`, `company_iata`)
    VALUES (p_airplane_registration_number, p_airplane_type_id, p_company_iata);
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `UpdateAirplane`(
    IN p_airplane_registration_number VARCHAR(20),
    IN p_airplane_type_id INT,
    IN p_company_iata CHAR(2)
)
BEGIN
    UPDATE `airport`.`Airplanes`
    SET 
        `airplane_type_id` = p_airplane_type_id,
        `company_iata` = p_company_iata
    WHERE `airplane_registration_number` = p_airplane_registration_number;
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `InsertFloor`(
    IN p_airplane_type_id INT,
    IN p_floor_number INT
)
BEGIN
    INSERT INTO `airport`.`floors` (`airplane_type_id`, `floor_number`)
    VALUES (p_airplane_type_id, p_floor_number);
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `UpdateFloor`(
    IN p_floor_id INT,
    IN p_airplane_type_id INT,
    IN p_floor_number INT
)
BEGIN
    UPDATE `airport`.`floors`
    SET 
        `airplane_type_id` = p_airplane_type_id,
        `floor_number` = p_floor_number
    WHERE `floor_id` = p_floor_id;
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `InsertSeatClass`(
    IN p_seat_class_type VARCHAR(45)
)
BEGIN
    INSERT INTO `airport`.`SeatsClass` (`seat_class_type`)
    VALUES (p_seat_class_type);
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `UpdateSeatClass`(
    IN p_seat_class_id INT,
    IN p_seat_class_type VARCHAR(45)
)
BEGIN
    UPDATE `airport`.`SeatsClass`
    SET 
        `seat_class_type` = p_seat_class_type
    WHERE `seat_class_id` = p_seat_class_id;
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `InsertSeat`(
    IN p_airplane_registration_number VARCHAR(20),
    IN p_row INT,
    IN p_column VARCHAR(1),
    IN p_is_available TINYINT,
    IN p_seat_class_id INT
)
BEGIN
    INSERT INTO `airport`.`Seats` 
    (`airplane_registration_number`, `row`, `column`, `is_avaivable`, `seat_class_id`)
    VALUES (p_airplane_registration_number, p_row, p_column, p_is_available, p_seat_class_id);
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `UpdateSeat`(
    IN p_seat_id INT,
    IN p_airplane_registration_number VARCHAR(20),
    IN p_row INT,
    IN p_column VARCHAR(1),
    IN p_is_available TINYINT,
    IN p_seat_class_id INT
)
BEGIN
    UPDATE `airport`.`Seats`
    SET 
        `airplane_registration_number` = p_airplane_registration_number,
        `row` = p_row,
        `column` = p_column,
        `is_avaivable` = p_is_available,
        `seat_class_id` = p_seat_class_id
    WHERE `seat_id` = p_seat_id;
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `InsertAirport`(
    IN p_airport_iata CHAR(3),
    IN p_airport_name VARCHAR(45),
    IN p_city VARCHAR(45),
    IN p_country_code VARCHAR(45)
)
BEGIN
    INSERT INTO `airport`.`Airports` 
    (`airport_iata`, `airport_name`, `city`, `country_code`)
    VALUES (p_airport_iata, p_airport_name, p_city, p_country_code);
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `UpdateAirport`(
    IN p_airport_iata CHAR(3),
    IN p_airport_name VARCHAR(45),
    IN p_city VARCHAR(45),
    IN p_country_code VARCHAR(45)
)
BEGIN
    UPDATE `airport`.`Airports`
    SET 
        `airport_name` = p_airport_name,
        `city` = p_city,
        `country_code` = p_country_code
    WHERE `airport_iata` = p_airport_iata;
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `InsertTerminal`(
    IN p_terminal_number VARCHAR(10),
    IN p_airport_iata CHAR(3)
)
BEGIN
    INSERT INTO `airport`.`Terminals` 
    (`terminal_number`, `airport_iata`)
    VALUES (p_terminal_number, p_airport_iata);
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `UpdateTerminal`(
    IN p_terminal_id INT,
    IN p_terminal_number VARCHAR(10),
    IN p_airport_iata CHAR(3)
)
BEGIN
    UPDATE `airport`.`Terminals`
    SET 
        `terminal_number` = p_terminal_number,
        `airport_iata` = p_airport_iata
    WHERE `terminal_id` = p_terminal_id;
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `InsertGate`(
    IN p_gate_number VARCHAR(10),
    IN p_terminal_id INT
)
BEGIN
    INSERT INTO `airport`.`Gates` 
    (`gate_number`, `terminal_id`)
    VALUES (p_gate_number, p_terminal_id);
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `UpdateGate`(
    IN p_gate_id INT,
    IN p_gate_number VARCHAR(10),
    IN p_terminal_id INT
)
BEGIN
    UPDATE `airport`.`Gates`
    SET 
        `gate_number` = p_gate_number,
        `terminal_id` = p_terminal_id
    WHERE `gate_id` = p_gate_id;
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `InsertFlight`(
    IN p_flight_number VARCHAR(20),
    IN p_departure_time DATETIME,
    IN p_arivival_time DATETIME,
    IN p_airplane_registration_number VARCHAR(20),
    IN p_departure_airport CHAR(3),
    IN p_destination_airport CHAR(3),
    IN p_gate_id INT
)
BEGIN
    INSERT INTO `airport`.`Flights` 
    (`flight_number`, `departure_time`, `arivival_time`, `airplane_registration_number`, `departure_airport`, `destination_airport`, `gate_id`)
    VALUES (p_flight_number, p_departure_time, p_arivival_time, p_airplane_registration_number, p_departure_airport, p_destination_airport, p_gate_id);
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `UpdateFlight`(
    IN p_flight_id INT,
    IN p_flight_number VARCHAR(20),
    IN p_departure_time DATETIME,
    IN p_arivival_time DATETIME,
    IN p_airplane_registration_number VARCHAR(20),
    IN p_departure_airport CHAR(3),
    IN p_destination_airport CHAR(3),
    IN p_gate_id INT
)
BEGIN
    UPDATE `airport`.`Flights`
    SET 
        `flight_number` = p_flight_number,
        `departure_time` = p_departure_time,
        `arivival_time` = p_arivival_time,
        `airplane_registration_number` = p_airplane_registration_number,
        `departure_airport` = p_departure_airport,
        `destination_airport` = p_destination_airport,
        `gate_id` = p_gate_id
    WHERE `flight_id` = p_flight_id;
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `InsertPositionType`(
    IN p_position_type VARCHAR(40)
)
BEGIN
    INSERT INTO `airport`.`PositionTypes` 
    (`position_type`)
    VALUES (p_position_type);
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `UpdatePositionType`(
    IN p_position_id INT,
    IN p_position_type VARCHAR(40)
)
BEGIN
    UPDATE `airport`.`PositionTypes`
    SET 
        `position_type` = p_position_type
    WHERE `position_id` = p_position_id;
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `InsertEmployee`(
    IN p_employee_firstname VARCHAR(25),
    IN p_employee_lastname VARCHAR(25),
    IN p_position_id INT
)
BEGIN
    INSERT INTO `airport`.`Employees` 
    (`employee_firstname`, `employee_lastname`, `position_id`)
    VALUES (p_employee_firstname, p_employee_lastname, p_position_id);
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `UpdateEmployee`(
    IN p_employee_id INT,
    IN p_employee_firstname VARCHAR(25),
    IN p_employee_lastname VARCHAR(25),
    IN p_position_id INT
)
BEGIN
    UPDATE `airport`.`Employees`
    SET 
        `employee_firstname` = p_employee_firstname,
        `employee_lastname` = p_employee_lastname,
        `position_id` = p_position_id
    WHERE `employee_id` = p_employee_id;
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `InsertCheckIn`(
    IN p_checkin_id INT,
    IN p_passenger_id INT,
    IN p_flight_id INT,
    IN p_seat_id INT,
    IN p_employee_id INT
)
BEGIN
    INSERT INTO `airport`.`CheckIns` 
    (`checkin_id`, `passenger_id`, `flight_id`, `seat_id`, `employee_id`)
    VALUES (p_checkin_id, p_passenger_id, p_flight_id, p_seat_id, p_employee_id);
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `UpdateCheckIn`(
    IN p_checkin_id INT,
    IN p_passenger_id INT,
    IN p_flight_id INT,
    IN p_seat_id INT,
    IN p_employee_id INT
)
BEGIN
    UPDATE `airport`.`CheckIns`
    SET 
        `passenger_id` = p_passenger_id,
        `flight_id` = p_flight_id,
        `seat_id` = p_seat_id,
        `employee_id` = p_employee_id
    WHERE `checkin_id` = p_checkin_id;
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `InsertEmployeePassword`(
    IN p_employee_id INT,
    IN p_password VARCHAR(255)
)
BEGIN
    INSERT INTO `airport`.`EmployeePasswords` 
    (`employee_id`, `password`)
    VALUES (p_employee_id, p_password);
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `UpdateEmployeePassword`(
    IN p_password_id INT,
    IN p_password VARCHAR(255)
)
BEGIN
    UPDATE `airport`.`EmployeePasswords`
    SET 
        `password` = p_password
    WHERE `password_id` = p_password_id;
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `InsertBaggageStatus`(
    IN p_baggage_status VARCHAR(45)
)
BEGIN
    INSERT INTO `airport`.`BaggageStatus` 
    (`baggage_status`)
    VALUES (p_baggage_status);
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `UpdateBaggageStatus`(
    IN p_baggage_status_id INT,
    IN p_baggage_status VARCHAR(45)
)
BEGIN
    UPDATE `airport`.`BaggageStatus`
    SET 
        `baggage_status` = p_baggage_status
    WHERE `baggage_status_id` = p_baggage_status_id;
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `InsertBaggageType`(
    IN p_baggage_type VARCHAR(40)
)
BEGIN
    INSERT INTO `airport`.`BaggageTypes` 
    (`baggage_type`)
    VALUES (p_baggage_type);
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `UpdateBaggageType`(
    IN p_baggage_type_id INT,
    IN p_baggage_type VARCHAR(40)
)
BEGIN
    UPDATE `airport`.`BaggageTypes`
    SET 
        `baggage_type` = p_baggage_type
    WHERE `baggage_type_id` = p_baggage_type_id;
END $$

DELIMITER ;




DELIMITER $$

CREATE PROCEDURE `InsertBaggage`(
    IN p_checkin_id INT,
    IN p_baggage_type_id INT,
    IN p_weight DECIMAL,
    IN p_baggage_status_id INT,
    IN p_paid TINYINT
)
BEGIN
    INSERT INTO `airport`.`Baggages` 
    (`checkin_id`, `baggage_type_id`, `weight`, `baggage_status_id`, `paid`)
    VALUES (p_checkin_id, p_baggage_type_id, p_weight, p_baggage_status_id, p_paid);
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `UpdateBaggage`(
    IN p_baggage_id INT,
    IN p_checkin_id INT,
    IN p_baggage_type_id INT,
    IN p_weight DECIMAL,
    IN p_baggage_status_id INT,
    IN p_paid TINYINT
)
BEGIN
    UPDATE `airport`.`Baggages`
    SET 
        `checkin_id` = p_checkin_id,
        `baggage_type_id` = p_baggage_type_id,
        `weight` = p_weight,
        `baggage_status_id` = p_baggage_status_id,
        `paid` = p_paid
    WHERE `baggage_id` = p_baggage_id;
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `InsertSeatsClassCount`(
    IN p_floor_id INT,
    IN p_seat_class_id INT,
    IN p_seat_count INT,
    IN p_total_rows INT,
    IN p_aisle_positions VARCHAR(30)
)
BEGIN
    INSERT INTO `airport`.`SeatsClassCount` 
    (`floor_id`, `seat_class_id`, `seat_count`, `total_rows`, `aisle_positions`)
    VALUES (p_floor_id, p_seat_class_id, p_seat_count, p_total_rows, p_aisle_positions);
END $$

DELIMITER ;




DELIMITER $$

CREATE PROCEDURE `UpdateSeatsClassCount`(
    IN p_floor_id INT,
    IN p_seat_class_id INT,
    IN p_seat_count INT,
    IN p_total_rows INT,
    IN p_aisle_positions VARCHAR(30)
)
BEGIN
    UPDATE `airport`.`SeatsClassCount`
    SET 
        `seat_count` = p_seat_count,
        `total_rows` = p_total_rows,
        `aisle_positions` = p_aisle_positions
    WHERE `floor_id` = p_floor_id
      AND `seat_class_id` = p_seat_class_id;
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `InsertBaggagePrices`(
    IN p_baggage_type_id INT,
    IN p_company_iata CHAR(2),
    IN p_airport_price INT,
    IN p_online_price INT,
    IN p_price_per_kg INT
)
BEGIN
    INSERT INTO `airport`.`BaggagePrices` 
    (`baggage_type_id`, `company_iata`, `airport_price`, `online_price`, `price_per_kg`)
    VALUES (p_baggage_type_id, p_company_iata, p_airport_price, p_online_price, p_price_per_kg);
END $$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE `UpdateBaggagePrices`(
    IN p_baggage_type_id INT,
    IN p_company_iata CHAR(2),
    IN p_airport_price INT,
    IN p_online_price INT,
    IN p_price_per_kg INT
)
BEGIN
    UPDATE `airport`.`BaggagePrices`
    SET 
        `airport_price` = p_airport_price,
        `online_price` = p_online_price,
        `price_per_kg` = p_price_per_kg
    WHERE `baggage_type_id` = p_baggage_type_id
      AND `company_iata` = p_company_iata;
END $$

DELIMITER ;





