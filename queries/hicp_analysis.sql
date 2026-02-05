Average inflation by country
 SELECT country,
       round(AVG(inflation_rate), 2) AS avg_inflation
       FROM `hicp_v4_2014-24`
       GROUP BY country
       ORDER BY avg_inflation DESC;
       SELECT country, year, inflation_rate

Highest inflation rate per country
       SELECT country,MAX(inflation_rate) AS max_inflation
       FROM `hicp_v4_2014-24`
       GROUP BY country;

Inflation in 2022
       SELECT country, inflation_rate
       FROM `hicp_v4_2014-24`
       WHERE year = 2022
       ORDER BY inflation_rate DESC;

Inflation Ranking
       SELECT year,
       country,
       inflation_rate,
       RANK() OVER (PARTITION BY year ORDER BY inflation_rate DESC) AS rank_in_year
FROM `hicp_v4_2014-24`;