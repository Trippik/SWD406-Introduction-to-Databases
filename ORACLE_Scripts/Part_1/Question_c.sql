SELECT
    CHARACTER.NAME,
    CHARACTER.gender,
    --Display Data from CHARACTER table
    Species.NAME AS Species_Name,
    --Display corresponding species name from Species table
    color.NAME AS Hair_Colour,
    --Display corresponding color name from color table
    Planet.NAME AS Planet_Name,
    --Display corresponding planet name from Planet table
    Vehicle.model AS Vehicle_Model,
    Vehicle.vehicle_class
    --Display corresponding Vehicle modeal and class
FROM CHARACTER
--Pull data from CHARACTER Table
LEFT JOIN Driver ON CHARACTER.id = Driver.CHARACTER_id
--Join Driver table using Character id whilst permitting null values
INNER JOIN CAST ON CHARACTER.id = CAST.CHARACTER_id
--Join CAST table using Character id
INNER JOIN Species ON CHARACTER.species_id = Species.id
--Join Species table using Species id
INNER JOIN Planet ON CHARACTER.planet_id = Planet.id
--Join Planet table using planet id
LEFT JOIN color ON CHARACTER.hair_color = color.id
--Join color table using color id whilst permitting null values
LEFT JOIN Vehicle ON Driver.vehicle_id = Vehicle.id
--Join Vehicle table using vehicle id whilst permitting null values
WHERE film_id = 4
--Only show entries where the film_id is 4
ORDER BY CHARACTER.NAME
--Order entries alphabetically by character name
;
