SELECT 	Film.title AS 'Movie_Title',
		COUNT(*) AS 'Number_Of_Starships',
        ROUND(AVG(Starship.cost_in_credits), 2) AS 'Average_Cost',
        ROUND(STDDEV(Starship.cost_in_credits), 2) AS 'Standard_Deviation_of_Cost'
FROM Star_Wars_Database.Starship
LEFT JOIN Pilot ON Starship.id = Pilot.starship_id
INNER JOIN Star_Wars_Character ON Pilot.Star_Wars_Character_id = Star_Wars_Character.id
INNER JOIN Film_Cast ON Star_Wars_Character.id = Film_Cast.Star_Wars_Character_id
INNER JOIN Film ON Film_Cast.film_id = Film.id
GROUP BY Film.id
ORDER BY Average_Cost;
