#Insert Vehicle_Type Data
INSERT INTO Vehicle_Type (vehicle_type) VALUES ('wheeled');
INSERT INTO Vehicle_Type (vehicle_type) VALUES ('repulsorcraft');
INSERT INTO Vehicle_Type (vehicle_type) VALUES ('starfighter');
INSERT INTO Vehicle_Type (vehicle_type) VALUES ('airspeeder');
INSERT INTO Vehicle_Type (vehicle_type) VALUES ('space/planetary bomber');
INSERT INTO Vehicle_Type (vehicle_type) VALUES ('assault walker');
INSERT INTO Vehicle_Type (vehicle_type) VALUES ('walker');
INSERT INTO Vehicle_Type (vehicle_type) VALUES ('sail barge');
INSERT INTO Vehicle_Type (vehicle_type) VALUES ('speeder');
INSERT INTO Vehicle_Type (vehicle_type) VALUES ('landing craft');
INSERT INTO Vehicle_Type (vehicle_type) VALUES ('submarine');
INSERT INTO Vehicle_Type (vehicle_type) VALUES ('gunship');
INSERT INTO Vehicle_Type (vehicle_type) VALUES ('wheeled walker');
INSERT INTO Vehicle_Type (vehicle_type) VALUES ('tank');
INSERT INTO Vehicle_Type (vehicle_type) VALUES ('transport');
INSERT INTO Vehicle_Type (vehicle_type) VALUES ('Star Battleship');
INSERT INTO Vehicle_Type (vehicle_type) VALUES ('Battlestation');
INSERT INTO Vehicle_Type (vehicle_type) VALUES ('Freighter');
INSERT INTO Vehicle_Type (vehicle_type) VALUES ('Patrol Craft');
INSERT INTO Vehicle_Type (vehicle_type) VALUES ('Escort Ship');
INSERT INTO Vehicle_Type (vehicle_type) VALUES ('Star Cruiser');
INSERT INTO Vehicle_Type (vehicle_type) VALUES ('Yacht');
INSERT INTO Vehicle_Type (vehicle_type) VALUES ('Star Destroyer');
INSERT INTO Vehicle_Type (vehicle_type) VALUES ('Capital Ship');
INSERT INTO Vehicle_Type (vehicle_type) VALUES ('Control Ship');
INSERT INTO Vehicle_Type (vehicle_type) VALUES ('Corvette');


#Insert Vehicle_Class Data
INSERT INTO Vehicle_Class (class_name, passangers, manufacturer, cost_in_credits, vehicle_type, cargo_capacity, consumables, max_atmospheric_speed, crew, length, hyperdrive_rating) VALUES
('T-16 skyhopper', 1, 'Incom Corporation', 14500, 2, 50, '0', 1200, 1, 10.4, NULL);
INSERT INTO Vehicle_Class (class_name, passangers, manufacturer, cost_in_credits, vehicle_type, cargo_capacity, consumables, max_atmospheric_speed, crew, length, hyperdrive_rating) VALUES
('X-34 landspeeder', 1, 'SoroSuub Corporation',  10550, 2, 5, NULL, 250, 1, 3.4, NULL);
INSERT INTO Vehicle_Class (class_name, passangers, manufacturer, cost_in_credits, vehicle_type, cargo_capacity, consumables, max_atmospheric_speed, crew, length, hyperdrive_rating) VALUES
('TIE/LN starfighter', 0, 'Sienar Fleet Systems', NULL, 3, 65, '2 days', 1200, 1, 6.4, NULL);
INSERT INTO Vehicle_Class (class_name, passangers, manufacturer, cost_in_credits, vehicle_type, cargo_capacity, consumables, max_atmospheric_speed, crew, length, hyperdrive_rating) VALUES
('t-47 airspeeder', 0, 'Incom corporation',  NULL, 4, 10, NULL, 650, 2, 4.5, NULL);
INSERT INTO Vehicle_Class (class_name, passangers, manufacturer, cost_in_credits, vehicle_type, cargo_capacity, consumables, max_atmospheric_speed, crew, length, hyperdrive_rating) VALUES
('X-Wing', 0, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Vehicle_Class (class_name, passangers, manufacturer, cost_in_credits, vehicle_type, cargo_capacity, consumables, max_atmospheric_speed, crew, length, hyperdrive_rating) VALUES
('Imperial Star Destroyer', 0, 'Kuat Drive Yards', 150000000, 23, 36000000, '2 years', 975, 47060, 1600, 2);
INSERT INTO Vehicle_Class (class_name, passangers, manufacturer, cost_in_credits, vehicle_type, cargo_capacity, consumables, max_atmospheric_speed, crew, length, hyperdrive_rating) VALUES
('CR90 corvette', 600, 'Corellian Engineering Corporation', 3500000, 26, 3000000, '1 year', 950, 165, 150, 2);


#Insert Vehicle Data
INSERT INTO Vehicle (vehicle_name, class_id) VALUES ('T-16 Skyhopper', 1); 
INSERT INTO Vehicle (vehicle_name, class_id) VALUES ('Luke Skywalkers Landspeeder', 2);
INSERT INTO Vehicle (vehicle_name, class_id) VALUES ('Imperial TIE Fighter', 3);
INSERT INTO Vehicle (vehicle_name, class_id) VALUES ('First Order TIE Fighter', 3);
INSERT INTO Vehicle (vehicle_name, class_id) VALUES ('Rebel Snowspeeder', 4);
INSERT INTO Vehicle (vehicle_name, class_id) VALUES ('Rebel X-Wing', 5);
INSERT INTO Vehicle (vehicle_name, class_id) VALUES ('Imperial Star Destroyer', 6);
INSERT INTO Vehicle (vehicle_name, class_id) VALUES ('Rebel Corvette', 7);
INSERT INTO Vehicle (vehicle_name, class_id) VALUES ('Corellian Corvette', 7);
INSERT INTO Vehicle (vehicle_name, class_id) VALUES ('Consular Vessel', 7);

#Insert Vehicle_Film Data
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
