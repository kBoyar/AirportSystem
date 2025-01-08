DELIMITER $$

CREATE TRIGGER before_insert_country
BEFORE INSERT ON airport.Countries
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM airport.Countries WHERE country_code = NEW.country_code) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Country code already exists';
    END IF;

    IF EXISTS (SELECT 1 FROM airport.Countries WHERE country_name = NEW.country_name) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Country name already exists';
    END IF;
END$$

DELIMITER ;



DELIMITER $$

CREATE TRIGGER before_insert_seat
BEFORE INSERT ON airport.Seats
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM airport.Seats WHERE airplane_registration_number = NEW.airplane_registration_number) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Seat for this airplane registration number already exists';
    END IF;
END$$

DELIMITER ;


DELIMITER $$

CREATE TRIGGER before_insert_airport
BEFORE INSERT ON airport.Airports
FOR EACH ROW
BEGIN
    -- Проверка дали IATA кодът вече съществува
    IF EXISTS (SELECT 1 FROM airport.Airports WHERE airport_iata = NEW.airport_iata) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'IATA code already exists';
    END IF;
END$$

DELIMITER ;


