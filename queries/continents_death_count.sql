-- Showing continents with highest death count per polpulation
SELECT continent,MAX(total_deaths) AS TotalDeathCount
FROM portfolio_project.covid_deaths
WHERE continent<>''
GROUP BY continent
ORDER BY TotalDeathCount DESC;
