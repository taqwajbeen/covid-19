-- Creating a view to store data for visualisations
CREATE VIEW PercentPopulationVaccinated AS
SELECT dea.continent,dea.location,dea.date,dea.population,vacc.new_vaccinations,SUM(new_vaccinations) OVER (PARTITION BY dea.location ORDER BY dea.location,dea.date) AS RollingPeopleVaccinated
FROM portfolio_project.covid_deaths AS dea
JOIN portfolio_project.covid_vaccinations AS vacc
ON dea.date=vacc.date
and dea.location = vacc.location
WHERE dea.continent<>'';
