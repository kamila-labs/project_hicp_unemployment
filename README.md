#Inflation and Labor Market across Visegrad Countries - 2014-2024

###Project
    This project analyzes inflation and unemployment in Visegrad Group countries from 2014-2024.

###Data sources
    Eurostat - Harmonised Index of Consumer Prices(HICP)
    Eurostat - Unemployment rate

###Tools
    Power BI (Data cleaning,transformation adn visualization)
    MySQL (Data storage and analysis)
    VS Code

###Methodology
    Raw dataset were downloaded(Excel format) then cleaned in Power BI,column was split into separate ones,unnecessary were removed.The dataset was orginally in 1 large cell in Excel which encouraged me to usw PowerBI
    While working with PowerBI,I simultaneously created the skeleton of the SQL tables in MySQL.The transformed tables were exported into Excel and then to the MySQL where I calculated average rates etc.Once I had prepared the datasets,I used INNER JOIN to merge them into macroeconomic view.The results were exported to Excel then to PowerBI

###Key Insights
    Average Inflation by country
    In the analyzed period, average inflation rate indicates that Poland(3.45) experienced lower inflation rate compared to Czech Republic (3.55) and Hungary(4.55), suggesting a higher level of economic stability
    Slovakia(3.18) was the least vulnerable to risin prices throughout the decade.
    Inflation in 2022
    In year 2022 every country in the Visegrad group recorded its highest inflation rate, driven by the armed conflict in Europe, ongoing pandemic and disrupted supply chains.
    Slovakia marked the year with an HICP level of 13.2, positioning its stability in the best spot.
    Inflation started to fall in most V4 countries.Hungary continued to face accelerating prices possibly due to delayed or ineffective stabilization measure
    Relation between uneployment rate and inflation
    Despite relatively stable prices, unemployment rates in Slovakia have tended to be the highest throughout the decade,while Hungary with relatively low unemployment experienced more volatile inflation
