SELECT
    CHARACTER.name,
    CHARACTER.height,
    CHARACTER.birth_year,
    CHARACTER.gender
FROM CHARACTER
WHERE CHARACTER.name LIKE '%Skywalker%'
--Select name, height and gender from the Star Wars Character table for entries where the character name contains Skywalker
ORDER BY CHARACTER.name ASC;
--Display these entries in ascending order of their name
