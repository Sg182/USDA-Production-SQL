UPDATE cheese_production SET Value = REPLACE(Value, ',','');

UPDATE honey_production SET Value = REPLACE(Value, ',','');

UPDATE coffee_production SET Value = REPLACE(Value, ',','');
UPDATE milk_production SET Value = REPLACE(Value, ',','');

UPDATE yogurt_production SET Value = REPLACE(Value, ',','');
UPDATE egg_production SET Value = REPLACE(Value, ',','');

SELECT Value, TYPEOF(Value) AS DataType FROM cheese_production LIMIT 6