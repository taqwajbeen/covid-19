-- Looking at Total_cases vs Total_deaths
SELECT location,date,total_cases,total_deaths,(total_deaths/total_cases)*100 AS DeathPercentage
FROM portfolio_project.covid_deaths
ORDER BY 1,2;
