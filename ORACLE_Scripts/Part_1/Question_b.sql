SELECT
    Species.name,
    Planet.name,
    Planet.population,
    Species.name,
    Species.average_height,
    skin_color.name AS Skin_Colour,
    hair_color.name AS Hair_Colour
    FROM Species
LEFT OUTER JOIN Planet ON Species.homeworld = Planet.id
LEFT OUTER JOIN color skin_color ON Species.skin_color = skin_color.id
LEFT OUTER JOIN color hair_color ON Species.hair_color = hair_color.id
ORDER BY Species.name;
