-- GDP vs Covid
SELECT MAX(vacc.gdp_per_capita),dea.location,MAX(dea.total_deaths)
FROM portfolio_project.covid_deaths AS dea
JOIN portfolio_project.covid_vaccinations AS vacc
ON dea.date=vacc.date
and dea.location = vacc.location
WHERE dea.continent<>''
GROUP BY dea.location
