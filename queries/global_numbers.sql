-- GLOBAL NUMBERS
SELECT date,SUM(new_cases) AS total_cases,SUM(new_deaths) AS total_deaths,SUM(new_deaths)/SUM(new_cases)*100 AS DeathPercenatge
FROM portfolio_project.covid_deaths
WHERE continent<>''
GROUP BY date
ORDER BY 1,2;
