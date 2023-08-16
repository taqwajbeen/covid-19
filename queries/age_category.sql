
-- Age Categories of people Affected due to covid
SELECT dea.location,Round(AVG(vacc.median_age),2),ROUND(AVG(vacc.aged_70_older),2),ROUND(AVG(vacc.aged_65_older),2),ROUND(AVG(vacc.life_expectancy),2),SUM(dea.total_deaths)
FROM portfolio_project.covid_deaths AS dea
JOIN portfolio_project.covid_vaccinations AS vacc
ON dea.date=vacc.date
and dea.location = vacc.location
WHERE dea.continent<>''
GROUP BY dea.location;
