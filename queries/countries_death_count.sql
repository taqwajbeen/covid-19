-- Showing Countries with Highest Death Counts Per population
SELECT location,MAX(total_deaths) AS TotalDeathCount
FROM portfolio_project.covid_deaths
WHERE continent IS NOT Null
GROUP BY location
ORDER BY TotalDeathCount DESC;
