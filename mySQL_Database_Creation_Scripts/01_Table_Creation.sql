###########################################################################
# Initial script for creating the necessary tables for Star Wars Database #
###########################################################################




CREATE TABLE Film(
  id INT(11), 
  producer VARCHAR(100), 
  title VARCHAR(100), 
  release_date DATE, 
  episode_id INT(2), 
  director VARCHAR(100), 
  opening_crawl VARCHAR(4000),
  CONSTRAINT pk_film PRIMARY KEY (id)
);

CREATE TABLE color(
  id INT(11), 
  color_name VARCHAR(100),
  PRIMARY KEY (id)
);

CREATE TABLE Planet(
  id INT(11), 
  diameter INT(20),
  climate VARCHAR(100), 
  surface_water INT(20),
  Planet_name VARCHAR(100), 
  rotation_period INT(20),
  terrain VARCHAR(100), 
  gravity VARCHAR(100), 
  orbital_period INT(20), 
  population BIGINT,
  PRIMARY KEY(id)
);

CREATE TABLE Species(
 id INT(11), 
 homeworld INT(20),
 species_name VARCHAR(100), 
 average_height INT(20),
 skin_color INT(20),
 hair_color INT(20),
 eye_color INT(20),
 species_language VARCHAR(100), 
 average_lifespan INT(20),
 classification VARCHAR(100), 
 PRIMARY KEY (id), 
 FOREIGN KEY (hair_color) REFERENCES color (id), 
 FOREIGN KEY (skin_color) REFERENCES color (id), 
 FOREIGN KEY (eye_color) REFERENCES color(id),
 FOREIGN KEY (homeworld) REFERENCES Planet(id)
 );
 
 CREATE TABLE Star_Wars_Character(
  id INT(11), 
  planet_id INT(20), 
  species_id INT(20), 
  Character_name VARCHAR(100), 
  height INT(20), 
  mass INT(20), 
  hair_color INT(20), 
  skin_color INT(20), 
  eye_color INT(20),  
  birth_year VARCHAR(100), 
  gender VARCHAR(100),
  PRIMARY KEY(id),
  FOREIGN KEY (planet_id)  REFERENCES Planet(id),
  FOREIGN KEY (species_id) REFERENCES Species(id)
);

CREATE TABLE Vehicle(
  id INT(11), 
  vehicle_class VARCHAR(100), 
  passengers INT(20), 
  manufacturer VARCHAR(100), 
  cost_in_credits INT(20), 
  Vehicle_name VARCHAR(100), 
  model VARCHAR(100), 
  cargo_capacity INT(20), 
  consumables VARCHAR(100), 
  max_atmosphering_speed INT(20), 
  crew INT(20), 
  length FLOAT(20),
  PRIMARY KEY (id)
);

CREATE TABLE Starship(
  id INT(11), 
  manufacturer VARCHAR(100), 
  passengers INT(20),
  cost_in_credits BIGINT, 
  Starship_name VARCHAR(100), 
  hyperdrive_rating FLOAT(20), 
  cargo_capacity BIGINT, 
  consumables VARCHAR(100), 
  max_atmosphering_speed VARCHAR(100), 
  crew INT(20), 
  length FLOAT(20),
  MGLT INT(20), 
  starship_class VARCHAR(100),
  PRIMARY KEY (id)
);

CREATE TABLE Film_Cast(
Star_Wars_Character_id INT(11),
film_id INT(11),
FOREIGN KEY (Star_Wars_Character_id) REFERENCES Star_Wars_Character(id),
FOREIGN KEY (film_id) REFERENCES Film(id),
PRIMARY KEY (Star_Wars_Character_id, film_id)
);

CREATE TABLE Driver(
Star_Wars_Character_id INT(11),
vehicle_id INT(11),
FOREIGN KEY (Star_Wars_Character_id) REFERENCES Star_Wars_Character(id),
FOREIGN KEY (vehicle_id) REFERENCES Vehicle(id),
PRIMARY KEY (Star_Wars_Character_id, vehicle_id)
);

CREATE TABLE Pilot(
Star_Wars_Character_id INT(11),
starship_id INT(11),
FOREIGN KEY (Star_Wars_Character_id) REFERENCES Star_Wars_Character(id),
FOREIGN KEY (starship_id) REFERENCES Starship(id),
PRIMARY KEY (Star_Wars_Character_id, starship_id)
);
