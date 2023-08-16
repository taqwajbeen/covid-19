-- Looking at Total_cases Vs Population 
-- Shows What Percentage of population got infected by Covid
SELECT location,date,population,total_cases,MAX((total_cases/population)*100) AS PercentPopInfected
FROM portfolio_project.covid_deaths
GROUP BY 2,1,3,4
ORDER BY 1;

