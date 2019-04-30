--Drop existing tables 
DROP TABLE Driver;
DROP TABLE Vehicle;
DROP TABLE Pilot;
DROP TABLE Starship;


--Create new tables
CREATE TABLE Vehicle_Type (
id NUMBER(10) CHECK (id > 0) PRIMARY KEY,
vehicle_type VARCHAR2(250));

CREATE TABLE Vehicle_Class (
id NUMBER(10) PRIMARY KEY,
class_name VARCHAR2 (250),
passangers NUMBER(10),
manufacturer VARCHAR2 (250),
cost_in_credits NUMBER(10),
vehicle_type NUMBER(10) CHECK (vehicle_type > 0),
cargo_capacity NUMBER(10),
consumables VARCHAR2 (250),
max_atmospheric_speed NUMBER(10),
crew NUMBER(10),
length BINARY_DOUBLE,
hyperdrive_rating BINARY_DOUBLE,
FOREIGN KEY (vehicle_type)
REFERENCES Vehicle_Type(id));

CREATE TABLE Vehicle (
id NUMBER(10) CHECK (id > 0) PRIMARY KEY,
vehicle_name VARCHAR2(250),
class_id NUMBER(10) CHECK (class_id > 0),
FOREIGN KEY (class_id)
REFERENCES Vehicle_Class(id));

CREATE TABLE Driver (
character_id NUMBER(10),
vehicle_id NUMBER(10));


CREATE TABLE Vehicle_Film (
film_id NUMBER(10),
vehicle_id NUMBER(10));


-Insert data
--Insert Vehicle_Type Data
INSERT INTO Vehicle_Type (id, vehicle_type) VALUES (1, 'wheeled');
INSERT INTO Vehicle_Type (id, vehicle_type) VALUES (2, 'repulsorcraft');
INSERT INTO Vehicle_Type (id, vehicle_type) VALUES (3, 'starfighter');
INSERT INTO Vehicle_Type (id, vehicle_type) VALUES (4, 'airspeeder');
INSERT INTO Vehicle_Type (id, vehicle_type) VALUES (5, 'space/planetary bomber');
INSERT INTO Vehicle_Type (id, vehicle_type) VALUES (6, 'assault walker');
INSERT INTO Vehicle_Type (id, vehicle_type) VALUES (7, 'walker');
INSERT INTO Vehicle_Type (id, vehicle_type) VALUES (8, 'sail barge');
INSERT INTO Vehicle_Type (id, vehicle_type) VALUES (9, 'speeder');
INSERT INTO Vehicle_Type (id, vehicle_type) VALUES (10, 'landing craft');
INSERT INTO Vehicle_Type (id, vehicle_type) VALUES (11, 'submarine');
INSERT INTO Vehicle_Type (id, vehicle_type) VALUES (12, 'gunship');
INSERT INTO Vehicle_Type (id, vehicle_type) VALUES (13, 'wheeled walker');
INSERT INTO Vehicle_Type (id, vehicle_type) VALUES (14, 'tank');
INSERT INTO Vehicle_Type (id, vehicle_type) VALUES (15, 'transport');
INSERT INTO Vehicle_Type (id, vehicle_type) VALUES (16, 'Star Battleship');
INSERT INTO Vehicle_Type (id, vehicle_type) VALUES (17, 'Battlestation');
INSERT INTO Vehicle_Type (id, vehicle_type) VALUES (18, 'Freighter');
INSERT INTO Vehicle_Type (id, vehicle_type) VALUES (19, 'Patrol Craft');
INSERT INTO Vehicle_Type (id, vehicle_type) VALUES (20, 'Escort Ship');
INSERT INTO Vehicle_Type (id, vehicle_type) VALUES (21, 'Star Cruiser');
INSERT INTO Vehicle_Type (id, vehicle_type) VALUES (22, 'Yacht');
INSERT INTO Vehicle_Type (id, vehicle_type) VALUES (23, 'Star Destroyer');
INSERT INTO Vehicle_Type (id, vehicle_type) VALUES (24, 'Capital Ship');
INSERT INTO Vehicle_Type (id, vehicle_type) VALUES (25, 'Control Ship');
INSERT INTO Vehicle_Type (id, vehicle_type) VALUES (26, 'Corvette');


--Insert Vehicle_Class Data
INSERT INTO Vehicle_Class (id, class_name, passangers, manufacturer, cost_in_credits, vehicle_type, cargo_capacity, consumables, max_atmospheric_speed, crew, length, hyperdrive_rating) VALUES
(1, 'T-16 skyhopper', 1, 'Incom Corporation', 14500, 2, 50, '0', 1200, 1, 10.4, NULL);
INSERT INTO Vehicle_Class (id, class_name, passangers, manufacturer, cost_in_credits, vehicle_type, cargo_capacity, consumables, max_atmospheric_speed, crew, length, hyperdrive_rating) VALUES
(2, 'X-34 landspeeder', 1, 'SoroSuub Corporation',  10550, 2, 5, NULL, 250, 1, 3.4, NULL);
INSERT INTO Vehicle_Class (id, class_name, passangers, manufacturer, cost_in_credits, vehicle_type, cargo_capacity, consumables, max_atmospheric_speed, crew, length, hyperdrive_rating) VALUES
(3, 'TIE/LN starfighter', 0, 'Sienar Fleet Systems', NULL, 3, 65, '2 days', 1200, 1, 6.4, NULL);
INSERT INTO Vehicle_Class (id, class_name, passangers, manufacturer, cost_in_credits, vehicle_type, cargo_capacity, consumables, max_atmospheric_speed, crew, length, hyperdrive_rating) VALUES
(4, 't-47 airspeeder', 0, 'Incom corporation',  NULL, 4, 10, NULL, 650, 2, 4.5, NULL);
INSERT INTO Vehicle_Class (id, class_name, passangers, manufacturer, cost_in_credits, vehicle_type, cargo_capacity, consumables, max_atmospheric_speed, crew, length, hyperdrive_rating) VALUES
(5, 'X-Wing', 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Vehicle_Class (id, class_name, passangers, manufacturer, cost_in_credits, vehicle_type, cargo_capacity, consumables, max_atmospheric_speed, crew, length, hyperdrive_rating) VALUES
(6, 'Imperial Star Destroyer', 0, 'Kuat Drive Yards', 150000000, 23, 36000000, '2 years', 975, 47060, 1600, 2);
INSERT INTO Vehicle_Class (id, class_name, passangers, manufacturer, cost_in_credits, vehicle_type, cargo_capacity, consumables, max_atmospheric_speed, crew, length, hyperdrive_rating) VALUES
(7, 'CR90 corvette', 600, 'Corellian Engineering Corporation', 3500000, 26, 3000000, '1 year', 950, 165, 150, 2);


--Insert Vehicle Data
INSERT INTO Vehicle (id, vehicle_name, class_id) VALUES (1, 'T-16 Skyhopper', 1); 
INSERT INTO Vehicle (id, vehicle_name, class_id) VALUES (2, 'Luke Skywalkers Landspeeder', 2);
INSERT INTO Vehicle (id, vehicle_name, class_id) VALUES (3, 'Imperial TIE Fighter', 3);
INSERT INTO Vehicle (id, vehicle_name, class_id) VALUES (4, 'First Order TIE Fighter', 3);
INSERT INTO Vehicle (id, vehicle_name, class_id) VALUES (5, 'Rebel Snowspeeder', 4);
INSERT INTO Vehicle (id, vehicle_name, class_id) VALUES (6, 'Rebel X-Wing', 5);
INSERT INTO Vehicle (id, vehicle_name, class_id) VALUES (7, 'Imperial Star Destroyer', 6);
INSERT INTO Vehicle (id, vehicle_name, class_id) VALUES (8, 'Rebel Corvette', 7);
INSERT INTO Vehicle (id, vehicle_name, class_id) VALUES (9, 'Corellian Corvette', 7);
INSERT INTO Vehicle (id, vehicle_name, class_id) VALUES (10, 'Consular Vessel', 7);


--Insert Vehicle_Film Data
INSERT INTO Vehicle_Film (film_id, vehicle_id) VALUES (5, 1);
INSERT INTO Vehicle_Film (film_id, vehicle_id) VALUES (1, 2);
INSERT INTO Vehicle_Film (film_id, vehicle_id) VALUES (1, 3);
INSERT INTO Vehicle_Film (film_id, vehicle_id) VALUES (2, 3);
INSERT INTO Vehicle_Film (film_id, vehicle_id) VALUES (3, 3);
INSERT INTO Vehicle_Film (film_id, vehicle_id) VALUES (7, 4);
INSERT INTO Vehicle_Film (film_id, vehicle_id) VALUES (2, 5);
INSERT INTO Vehicle_Film (film_id, vehicle_id) VALUES (1, 6);
INSERT INTO Vehicle_Film (film_id, vehicle_id) VALUES (2, 6);
INSERT INTO Vehicle_Film (film_id, vehicle_id) VALUES (3, 6);
INSERT INTO Vehicle_Film (film_id, vehicle_id) VALUES (7, 6);
INSERT INTO Vehicle_Film (film_id, vehicle_id) VALUES (1, 7);
INSERT INTO Vehicle_Film (film_id, vehicle_id) VALUES (2, 7);
INSERT INTO Vehicle_Film (film_id, vehicle_id) VALUES (3, 7);
INSERT INTO Vehicle_Film (film_id, vehicle_id) VALUES (7, 7);
INSERT INTO Vehicle_Film (film_id, vehicle_id) VALUES (5, 8);
INSERT INTO Vehicle_Film (film_id, vehicle_id) VALUES (1, 8);
INSERT INTO Vehicle_Film (film_id, vehicle_id) VALUES (3, 8);
