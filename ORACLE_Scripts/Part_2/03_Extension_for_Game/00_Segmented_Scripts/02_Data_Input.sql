INSERT INTO Attack_Defence_Index (id, type_name) VALUES (1, 'Melee');
INSERT INTO Attack_Defence_Index (id, type_name) VALUES (2, 'Ranged');
INSERT INTO Attack_Defence_Index (id, type_name) VALUES (3, 'Ranged and Melee');

INSERT INTO Asset_Type_Index (id, type_name, attack_type, defence_type) VALUES (1, 'Lightsaber', 1, 3);
INSERT INTO Asset_Type_Index (id, type_name, attack_type, defence_type) VALUES (2, 'Blaster', 2, NULL);
INSERT INTO Asset_Type_Index (id, type_name, attack_type, defence_type) VALUES (3, 'Vibroweapon', 1, 1);
INSERT INTO Asset_Type_Index (id, type_name, attack_type, defence_type) VALUES (4, 'Energy Sheild', NULL, 3);

INSERT INTO Assets (id, asset_name, asset_type, damage, weight, cool_down, defensive_rating) VALUES
(1, 'Luke Skywalkers Lightsaber', 1, 50, 7, 2, 20);
INSERT INTO Assets (id, asset_name, asset_type, damage, weight, cool_down, defensive_rating) VALUES
(2, 'Kylo Rens Lightsaber', 1, 50, 7, 2, 20);
INSERT INTO Assets (id, asset_name, asset_type, damage, weight, cool_down, defensive_rating) VALUES
(3, 'Han Solos Blaster', 2, 20, 4, 1, 0);
INSERT INTO Assets (id, asset_name, asset_type, damage, weight, cool_down, defensive_rating) VALUES
(4, 'First Order Blaster', 2, 20, 4, 1, 0);
INSERT INTO Assets (id, asset_name, asset_type, damage, weight, cool_down, defensive_rating) VALUES
(5, 'Z6 Baton', 3, 30, 7, 1, 30);
INSERT INTO Assets (id, asset_name, asset_type, damage, weight, cool_down, defensive_rating) VALUES
(6, 'Rebel Blaster', 2, 20, 4, 1, 0);
INSERT INTO Assets (id, asset_name, asset_type, damage, weight, cool_down, defensive_rating) VALUES
(7, 'Darth Vaderss Lightsaber', 1, 50, 7, 2, 20);

INSERT INTO Inventory (character, assigned_asset) VALUES (70, 1);
INSERT INTO Inventory (character, assigned_asset) VALUES (70, 3);
INSERT INTO Inventory (character, assigned_asset) VALUES (70, 1);
INSERT INTO Inventory (character, assigned_asset) VALUES (67, 1);
INSERT INTO Inventory (character, assigned_asset) VALUES (67, 3);
INSERT INTO Inventory (character, assigned_asset) VALUES (66, 6);
INSERT INTO Inventory (character, assigned_asset) VALUES (68, 2);
INSERT INTO Inventory (character, assigned_asset) VALUES (4, 7);
INSERT INTO Inventory (character, assigned_asset) VALUES (1, 1);
INSERT INTO Inventory (character, assigned_asset) VALUES (5, 6);
INSERT INTO Inventory (character, assigned_asset) VALUES (14, 3);

INSERT INTO Character_Attributes (character, health, force_capability) VALUES
(1, 100, 10);
INSERT INTO Character_Attributes (character, health, force_capability) VALUES
(67, 100, 8);
INSERT INTO Character_Attributes (character, health, force_capability) VALUES
(68, 100, 8);
INSERT INTO Character_Attributes (character, health, force_capability) VALUES
(4, 120, 10);
INSERT INTO Character_Attributes (character, health, force_capability) VALUES
(5, 100, 4);
INSERT INTO Character_Attributes (character, health, force_capability) VALUES
(14, 100, 0);
INSERT INTO Character_Attributes (character, health, force_capability) VALUES
(70, 100, 2);
INSERT INTO Character_Attributes (character, health, force_capability) VALUES
(66, 100, 0);
