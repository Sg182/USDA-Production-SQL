SELECT SUM(Value) AS TotalMilkProduction, COUNT(*) AS Totalrows
FROM milk_production
WHERE Year = 2023;

SELECT * FROM coffee_production
WHERE Year = 2015;


SELECT SUM(Value) AS TotalCoffeeProduction
FROM coffee_production
WHERE Year = 2015;



SELECT AVG(Value) AS AverageHoneyProduction
FROM honey_production
WHERE Year = 2022;


SELECT State, State_ANSI
FROM state_lookup;


SELECT State, State_ANSI
FROM state_lookup
WHERE State = 'Iowa';

SELECT MAX(Value) AS HighestYogurtProduction
FROM yogurt_production
WHERE Year = 2022;


SELECT DISTINCT h.State_ANSI
FROM honey_production as h
INNER JOIN milk_production as m
ON h.State_ANSI = m.State_ANSI
WHERE h.Year = 2022 AND m.Year = 2022 AND h.State_ANSI = 35;

SELECT DISTINCT h.State_ANSI
FROM honey_production as h
INNER JOIN milk_production as m
ON h.State_ANSI = m.State_ANSI
WHERE h.Year = 2022 AND m.Year = 2022 AND h.State_ANSI = 35;



-- Total yogurt production in states
-- that also produced cheese in 2022

SELECT SUM(y.Value) AS TotalYogurtProduction
FROM yogurt_production AS y
WHERE y.Year = 2022
AND EXISTS (
    SELECT 1
    FROM cheese_production AS c
    WHERE c.State_ANSI = y.State_ANSI
      AND c.Year = 2022
);

