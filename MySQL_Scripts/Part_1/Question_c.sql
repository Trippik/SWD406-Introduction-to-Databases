SELECT 
    Star_Wars_Character.Character_name,
    Star_Wars_Character.gender,
    #Display Data from Star_Wars_Character table
    Species.species_name,
    #Display corresponding species name from Species table
    color.color_name AS Hair_Colour,
    #Display corresponding color name from color table and display column as Hair_Colour
    Planet.Planet_name,
    #Display corresponding planet name from Planet table
    Vehicle.model,
    Vehicle.vehicle_class
    #Display corresponding Vehicle modeal and class
FROM Star_Wars_Database.Star_Wars_Character
#Pull data from Star_Wars_Character Table
LEFT JOIN Driver ON Star_Wars_Character.id = Driver.Star_Wars_Character_id
#Join Driver table using Character id whilst permitting null values
INNER JOIN Film_Cast ON Star_Wars_Character.id = Film_Cast.Star_Wars_Character_id
#Join Film_Cast table using Character id
INNER JOIN Species ON Star_Wars_Character.species_id = Species.id
#Join Species table using Species id
INNER JOIN Planet ON Star_Wars_Character.planet_id = Planet.id
#Join Planet table using planet id
LEFT JOIN color ON Star_Wars_Character.hair_color = color.id
#Join color table using color id whilst permitting null values
LEFT JOIN Vehicle ON Driver.vehicle_id = Vehicle.id
#Join Vehicle table using vehicle id whilst permitting null values
WHERE film_id = 4
#Only show entries where the film_id is 4
ORDER BY Star_Wars_Character.Character_name
#Order entries alphabetically by character name
;
