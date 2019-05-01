INSERT INTO Attack_Defence_Index (type_name) VALUES ('Melee');
INSERT INTO Attack_Defence_Index (type_name) VALUES ('Ranged');
INSERT INTO Attack_Defence_Index (type_name) VALUES ('Ranged and Melee');

INSERT INTO Asset_Type_Index (type_name, attack_type, defence_type) VALUES ('Lightsaber', 1, 3);
INSERT INTO Asset_Type_Index (type_name, attack_type, defence_type) VALUES ('Blaster', 2, NULL);
INSERT INTO Asset_Type_Index (type_name, attack_type, defence_type) VALUES ('Vibroweapon', 1, 1);
INSERT INTO Asset_Type_Index (type_name, attack_type, defence_type) VALUES ('Energy Sheild', NULL, 3);

INSERT INTO Assets (asset_name, asset_type, damage, weight, cool_down, defensive_rating) VALUES 
("Luke Skywalker's Lightsaber", 1, 50, 7, 2, 20);
INSERT INTO Assets (asset_name, asset_type, damage, weight, cool_down, defensive_rating) VALUES 
("Kylo Ren's Lightsaber", 1, 50, 7, 2, 20);
INSERT INTO Assets (asset_name, asset_type, damage, weight, cool_down, defensive_rating) VALUES 
("Han Solo's Blaster", 2, 20, 4, 1, 0);
INSERT INTO Assets (asset_name, asset_type, damage, weight, cool_down, defensive_rating) VALUES 
("First Order Blaster", 2, 20, 4, 1, 0);
INSERT INTO Assets (asset_name, asset_type, damage, weight, cool_down, defensive_rating) VALUES 
("Luke Skywalker's Lightsaber", 1, 50, 7, 2, 20); 
INSERT INTO Assets (asset_name, asset_type, damage, weight, cool_down, defensive_rating) VALUES 
("Z6 Baton", 3, 30, 7, 1, 30);
INSERT INTO Assets (asset_name, asset_type, damage, weight, cool_down, defensive_rating) VALUES 
("Rebel Blaster", 2, 20, 4, 1, 0);
INSERT INTO Assets (asset_name, asset_type, damage, weight, cool_down, defensive_rating) VALUES
("Darth Vaders's Lightsaber", 1, 50, 7, 2, 20);

INSERT INTO Inventory (Star_Wars_Character, assigned_asset) VALUES (70, 1);
INSERT INTO Inventory (Star_Wars_Character, assigned_asset) VALUES (70, 3);
INSERT INTO Inventory (Star_Wars_Character, assigned_asset) VALUES (70, 1);
INSERT INTO Inventory (Star_Wars_Character, assigned_asset) VALUES (67, 1);
INSERT INTO Inventory (Star_Wars_Character, assigned_asset) VALUES (67, 3);
INSERT INTO Inventory (Star_Wars_Character, assigned_asset) VALUES (66, 7);
INSERT INTO Inventory (Star_Wars_Character, assigned_asset) VALUES (68, 2);
INSERT INTO Inventory (Star_Wars_Character, assigned_asset) VALUES (4, 8);
INSERT INTO Inventory (Star_Wars_Character, assigned_asset) VALUES (1, 1);
INSERT INTO Inventory (Star_Wars_Character, assigned_asset) VALUES (5, 7);
INSERT INTO Inventory (Star_Wars_Character, assigned_asset) VALUES (14, 3);

INSERT INTO Character_Attributes (Star_Wars_Character, health, force_capability) VALUES 
(1, 100, 10);
INSERT INTO Character_Attributes (Star_Wars_Character, health, force_capability) VALUES 
(67, 100, 8);
INSERT INTO Character_Attributes (Star_Wars_Character, health, force_capability) VALUES 
(68, 100, 8);
INSERT INTO Character_Attributes (Star_Wars_Character, health, force_capability) VALUES 
(4, 120, 10);
INSERT INTO Character_Attributes (Star_Wars_Character, health, force_capability) VALUES 
(5, 100, 4);
INSERT INTO Character_Attributes (Star_Wars_Character, health, force_capability) VALUES 
(14, 100, 0);
INSERT INTO Character_Attributes (Star_Wars_Character, health, force_capability) VALUES 
(70, 100, 2);
INSERT INTO Character_Attributes (Star_Wars_Character, health, force_capability) VALUES 
(66, 100, 0);
