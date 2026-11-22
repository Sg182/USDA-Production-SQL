
-- 1. Milk Production
CREATE TABLE IF NOT EXISTS milk_production (
    Year INTEGER,
    Period TEXT,
    Geo_Level TEXT,
    State_ANSI INTEGER,
    Commodity_ID INTEGER,
    Domain TEXT,
    Value INTEGER
);

-- 2. Cheese Production
CREATE TABLE IF NOT EXISTS cheese_production (
    Year INTEGER,
    Period TEXT,
    Geo_Level TEXT,
    State_ANSI INTEGER,
    Commodity_ID INTEGER,
    Domain TEXT,
    Value INTEGER
);

-- 3. Coffee Production
CREATE TABLE IF NOT EXISTS coffee_production (
    Year INTEGER,
    Period TEXT,
    Geo_Level TEXT,
    State_ANSI INTEGER,
    Commodity_ID INTEGER,
    Value INTEGER
);

-- 4. Egg Production
CREATE TABLE IF NOT EXISTS egg_production (
    Year INTEGER,
    Period TEXT,
    Geo_Level TEXT,
    State_ANSI INTEGER,
    Commodity_ID INTEGER,
    Value INTEGER
);

-- 5. Honey Production
CREATE TABLE IF NOT EXISTS honey_production (
    Year INTEGER,
    Geo_Level TEXT,
    State_ANSI INTEGER,
    Commodity_ID INTEGER,
    Value INTEGER
);

-- 6. State Lookup
CREATE TABLE IF NOT EXISTS state_lookup (
    State TEXT,
    State_ANSI INTEGER
);

-- 7. Yogurt Production
CREATE TABLE IF NOT EXISTS yogurt_production (
    Year INTEGER,
    Period TEXT,
    Geo_Level TEXT,
    State_ANSI INTEGER,
    Commodity_ID INTEGER,
    Domain TEXT,
    Value INTEGER
);

SELECT name
FROM sqlite_master
WHERE type = 'table'
ORDER BY name;
