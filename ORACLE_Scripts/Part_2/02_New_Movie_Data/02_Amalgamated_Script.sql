--Insert film data
INSERT INTO Film (id, producer, title, release_date, episode_id, director, opening_crawl)
VALUES (8, 	'Kathleen Kennedy, Ram Bergman', 'The Last Jedi', '12092017', 8, 'Rian Johnson', 
'The FIRST ORDER reigns.
Having decimated the peaceful
Republic, Supreme Leader Snoke
now deploys the merciless
legions to seize military
control of the galaxy.

Only General Leia Organas
band of RESISTANCE fighters
stand against the rising
tyranny, certain that Jedi
Master Luke Skywalker will
return and restore a spark of
hope to the fight.

But the Resistance has been
exposed. As the First Order
speeds toward the rebel base,
the brave heroes mount a
desperate escape....');


--Insert planet data
INSERT INTO PLANET (ID, NAME) VALUES (62, 'Yavin 4');


--Insert Vehicle Data
INSERT INTO VEHICLE (ID, VEHICLE_CLASS, NAME) VALUES (78, 'Speeder', "Reys Speeder");
INSERT INTO VEHICLE (ID, VEHICLE_CLASS, NAME) VALUES (79, 'Speeder', 'Ski Speeder'); 


--Insert character data
INSERT INTO CHARACTER(id, planet_id, species_id, name, height, mass, hair_color, skin_color, eye_color, birth_year, gender) 
VALUES (66, 3, 1, 'Poe Dameron', 172, 80, 4, 50, 4, '2ABY', 'Male');

INSERT INTO CHARACTER(id, planet_id, species_id, name, height, mass, hair_color, skin_color, eye_color, birth_year, gender) 
VALUES (67, 61, 1, 'Rey', 170, 54, 4, 11, 25, '15ABY', 'Female');

INSERT INTO CHARACTER(id, planet_id, species_id, name, height, mass, hair_color, skin_color, eye_color, birth_year, gender) 
VALUES (68, 32, 1, 'Kylo Ren', 189, 54, 4, 11, 4, '5ABY', 'Male');

INSERT INTO CHARACTER(id, planet_id, species_id, name, height, mass, hair_color, skin_color, eye_color, birth_year, gender) 
VALUES (69, 32, 1, 'Ben Solo', 189, 54, 4, 11, 4, '5ABY', 'Male');

INSERT INTO CHARACTER(id, species_id, name, height, mass, hair_color, skin_color, eye_color, birth_year, gender) 
VALUES (70, 1, 'Finn', 178, 73, 4, 17, 4, '11ABY', 'Male');


--Insert film cast data
INSERT INTO CAST (CHARACTER_id, Film_id) VALUES (66, 8);
INSERT INTO CAST (CHARACTER_id, Film_id) VALUES (67, 8);
INSERT INTO CAST (CHARACTER_id, Film_id) VALUES (68, 8);
INSERT INTO CAST (CHARACTER_id, Film_id) VALUES (69, 8);
INSERT INTO CAST (CHARACTER_id, Film_id) VALUES (70, 8);
INSERT INTO CAST (CHARACTER_id, Film_id) VALUES (1, 8);
INSERT INTO CAST (CHARACTER_id, Film_id) VALUES (5, 8);
INSERT INTO CAST (CHARACTER_id, Film_id) VALUES (2, 8);
INSERT INTO CAST (CHARACTER_id, Film_id) VALUES (13, 8);
INSERT INTO CAST (CHARACTER_id, Film_id) VALUES (20, 8);
INSERT INTO CAST (CHARACTER_id, Film_id) VALUES (3, 8);


--Insert starship data
INSERT INTO Starship (id, starship_class, name) VALUES (78, 'Starfighter', 'X-Wing');


--Insert pilot data
INSERT INTO Pilot (Character_id, starship_id) VALUES (66, 78);


--Insert driver data
INSERT INTO Driver (Character_id, vehicle_id) VALUES (67, 79);
INSERT INTO Driver (Character_id, vehicle_id) VALUES (68, 8);
INSERT INTO Driver (Character_id, vehicle_id) VALUES (70, 80);
