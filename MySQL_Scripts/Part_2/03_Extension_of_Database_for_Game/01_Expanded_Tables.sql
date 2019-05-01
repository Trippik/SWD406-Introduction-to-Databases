CREATE TABLE Attack_Defence_Index(
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
type_name VARCHAR(250)
);

CREATE TABLE Asset_Type_Index (
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
type_name VARCHAR(250),
attack_type INT UNSIGNED,
defence_type INT UNSIGNED,
FOREIGN KEY (attack_type) 
REFERENCES Attack_Defence_Index(id)
ON DELETE RESTRICT,
FOREIGN KEY (defence_type) 
REFERENCES Attack_Defence_Index(id)
ON DELETE RESTRICT
);

CREATE TABLE Assets (
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
asset_name VARCHAR(250),
asset_type INT UNSIGNED,
damage INT,
weight INT,
cool_down INT,
defensive_rating INT,
FOREIGN KEY (asset_type) 
REFERENCES Asset_Type_Index(id)
ON DELETE RESTRICT
);

CREATE TABLE Inventory (
Star_Wars_Character INT NOT NULL,
assigned_asset INT UNSIGNED NOT NULL,
FOREIGN KEY (assigned_asset) 
REFERENCES Assets(id)
ON DELETE RESTRICT,
FOREIGN KEY (Star_Wars_Character)
REFERENCES Star_Wars_Character(id)
ON DELETE RESTRICT 
);

CREATE TABLE Character_Attributes (
Star_Wars_Character INT NOT NULL,
health INT ,
force_capability INT CHECK (force_capability < 11),
FOREIGN KEY (Star_Wars_Character) 
REFERENCES Star_Wars_Character(id)
ON DELETE RESTRICT
);
