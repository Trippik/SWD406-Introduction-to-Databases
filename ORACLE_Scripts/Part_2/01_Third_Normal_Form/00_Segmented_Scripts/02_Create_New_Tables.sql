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
