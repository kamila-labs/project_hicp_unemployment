Merging tables
    SELECT COUNT(*) FROM `hicp_v4_2014-24`;
    SELECT COUNT(*) FROM unemployment_visegrad;
    SELECT
    h.country,
    h.year,
    h.inflation_rate,
    u.unemployment_rate
    FROM `hicp_v4_2014-24` h
    JOIN unemployment_visegrad u
    ON h.country = u.country
    AND h.year = u.year
    ORDER BY h.country, h.year;
SQL Views
    CREATE OR REPLACE VIEW v4_macro AS
    SELECT
    h.country,
    h.year,
    h.inflation_rate,
    u.unemployment_rate
    FROM `hicp_v4_2014-24` h
    JOIN unemployment_visegrad u
    ON h.country = u.country
    AND h.year = u.year;
Average Inflation and Unemployment by country
    SELECT country,
    ROUND(AVG(inflation_rate),2) AS avg_inflation,
    ROUND(AVG(unemployment_rate),2) AS avg_unemployment
    FROM v4_macro
    GROUP BY country;
Inflation and unemployment peaks by country
    SELECT country,
    MAX(inflation_rate) AS max_inflation,
    MAX(unemployment_rate) AS max_unemployment
    FROM v4_macro
    GROUP BY country;