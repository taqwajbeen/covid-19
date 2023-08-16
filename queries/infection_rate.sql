-- Looking at coountries with highest infection rate as compared to population 
SELECT location,date,population,MAX(total_cases) AS InfectionCount,Max((total_cases/population)*100) AS PercentPopInfected
FROM portfolio_project.covid_deaths
GROUP BY population,location,date
ORDER BY PercentPopInfected DESC;
