SELECT 
	Star_Wars_Character.Character_name,
    Star_Wars_Character.height,
    Hair_Colour.color_name AS Hair_Colour,
    #Select color_name from Hair_Colour Alias table and display as Hair_Colour
    Skin_Colour.color_name AS Skin_Colour,
    #Select color_name from Skin_Colour Alias table and display as Skin_Colour
    Planet.Planet_name,
    Planet.population
FROM Star_Wars_Database.Star_Wars_Character
#Select all Characters names, heights, hair colours, and skin colours from the Star_Wars_Character table and Characters planets names and populations from the Planet table
INNER JOIN Planet ON Star_Wars_Character.planet_id = Planet.id
#Join entries from the Star_Wars_Characters table and Planet_table via the planet_id field for each entry on the Star_Wars_Character table and the corresponding id in the Planet table
INNER JOIN color AS Hair_Colour ON Star_Wars_Character.hair_color = Hair_Colour.id
#Join entries from the Star_Wars_Characters table and color_table via the Hair_Color_id and color id, give the color table the Alias Hair_Colour for this join
INNER JOIN color AS Skin_Colour ON Star_Wars_Character.skin_color = Skin_Colour.id
#Join entries from the Star_Wars_Characters table and color_table via the Skin_Color_id and color id, give the color table the Alias Skin_Colour for this join
ORDER BY Star_Wars_Character.Character_name ASC;
#Order results by character name
