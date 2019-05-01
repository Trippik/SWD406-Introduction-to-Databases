SELECT
    Star_Wars_Character.Character_name,
    Star_Wars_Character.height,
    Star_Wars_Character.birth_year,
    Star_Wars_Character.gender
FROM Star_Wars_Database.Star_Wars_Character
WHERE Star_Wars_Character.Character_name LIKE '%Skywalker%'
#Select name, height and gender from the Star Wars Character table for entries where the character name contains Skywalker
ORDER BY Star_Wars_Character.Character_name ASC;
#Display these entries in ascending order of their name
