CREATE TABLE Attack_Defence_Index(
id NUMBER(10) CHECK (id > 0) PRIMARY KEY,
type_name VARCHAR2(250)
);

CREATE TABLE Asset_Type_Index (
id NUMBER(10) CHECK (id > 0) PRIMARY KEY,
type_name VARCHAR2(250),
attack_type NUMBER(10) CHECK (attack_type > 0),
defence_type NUMBER(10) CHECK (defence_type > 0),
FOREIGN KEY (attack_type)
REFERENCES Attack_Defence_Index(id),
FOREIGN KEY (defence_type)
REFERENCES Attack_Defence_Index(id)
);

CREATE TABLE Assets (
id NUMBER(10) CHECK (id > 0) PRIMARY KEY,
asset_name VARCHAR2(250),
asset_type NUMBER(10) CHECK (asset_type > 0),
damage NUMBER(10),
weight NUMBER(10),
cool_down NUMBER(10),
defensive_rating NUMBER(10),
FOREIGN KEY (asset_type)
REFERENCES Asset_Type_Index(id)
);

CREATE TABLE Inventory (
character NUMBER(10) NOT NULL,
assigned_asset NUMBER(10) CHECK (assigned_asset > 0) NOT NULL,
FOREIGN KEY (assigned_asset)
REFERENCES Assets(id),
FOREIGN KEY (character)
REFERENCES character(id)
);

CREATE TABLE Character_Attributes (
character NUMBER(10) NOT NULL,
health NUMBER(10) ,
force_capability NUMBER(10) CHECK (force_capability < 11),
FOREIGN KEY (character)
REFERENCES character(id)
);
