Annual average unemployment rate
    SELECT country,
    round(AVG(unemployment_rate), 2) AS avg_unemployment
    FROM unemployment_visegrad
    GROUP BY country
    ORDER BY avg_unemployment DESC;
Highest unemployment rate
    SELECT country,
    MAX(unemployment_rate) AS max_unemployment
    FROM `unemployment_visegrad`
    GROUP BY country;
Unemployment rate 2022
    SELECT country, unemployment_rate
    FROM `unemployment_visegrad`
    WHERE year = 2022
    ORDER BY unemployment_rate DESC;
Unemployment Ranking
    SELECT year,
    country,
    unemployment_rate,
    RANK() OVER (PARTITION BY year ORDER BY unemployment_rate DESC) AS rank_in_year
    FROM `unemployment_visegrad`;