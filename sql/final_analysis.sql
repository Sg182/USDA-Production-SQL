SELECT SUM(Value) AS TotalMilkProduction
FROM milk_production
WHERE Year = 2023;

SELECT s.State, c.Value
FROM cheese_production AS c
INNER JOIN state_lookup As s
ON c.State_ANSI = s.State_ANSI
WHERE c.Year = 2023 AND c.Period = 'APR' AND c.Value > 100000000;


SELECT COUNT(DISTINCT State_ANSI) AS TotalStates
FROM cheese_production
WHERE Year = 2023
  AND Period = 'APR'
  AND Value > 100000000;



SELECT
    c.State_ANSI,
    s.State,
    c.Geo_Level,
    c.Value,
    TYPEOF(c.Value) AS ValueType
FROM cheese_production AS c
LEFT JOIN state_lookup AS s
    ON c.State_ANSI = s.State_ANSI
WHERE c.Year = 2023
  AND c.Period = 'APR'
  AND c.Value > 100000000
ORDER BY c.Value DESC;


SELECT SUM(Value) AS TotalCoffeeProduction
FROM coffee_production
WHERE Year = 2011;

SELECT AVG(Value) AS AverageHoneyProduction
FROM honey_production
WHERE Year = 2022;


-- LIST ALL STATES WITH THEIR ANSI CODES

SELECT State, State_ANSI,
TYPEOF(State_ANSI) AS DATATYPE
FROM state_lookup
ORDER BY State ASC;


-- Cheese production by state, April 2023

SELECT
    s.State,
    COALESCE(SUM(c.Value), 0) AS TotalCheese
FROM state_lookup AS s
LEFT JOIN cheese_production AS c
    ON s.State_ANSI = c.State_ANSI
    AND c.Year = 2023
    AND c.Period = 'APR'
    WHERE s.State = 'NEW JERSEY'
GROUP BY s.State
ORDER BY s.State;


-- Q7: Yogurt production in qualifying states

SELECT SUM(y.Value) AS TotalYogurt
FROM yogurt_production AS y
WHERE y.Year = 2022
  AND y.State_ANSI IN (
      SELECT DISTINCT c.State_ANSI
      FROM cheese_production AS c
      WHERE c.Year = 2023
  );


SELECT COUNT(*) AS MissingStates
FROM state_lookup AS s
WHERE NOT EXISTS (SELECT 1
                FROM milk_production AS m
                WHERE m.State_ANSI = s.State_ANSI
                AND m.Year = 2023);

SELECT s.State, c.Value AS CheeseProduction
FROM state_lookup as s
LEFT JOIN cheese_production AS c
    ON s.State_ANSI = c.State_ANSI
    AND c.Year = 2023
    AND c.Period = 'APR'
WHERE s.State = 'DELAWARE';



-- Question 10: Average coffee production

SELECT AVG(c.Value) AS AverageCoffee
FROM coffee_production AS c
WHERE c.Year IN (
    SELECT DISTINCT h.Year
    FROM honey_production AS h
    WHERE h.Value > 1000000
);
