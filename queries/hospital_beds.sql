-- Total number of hospital beds available in each country
SELECT dea.location,vacc.hospital_beds_per_thousand,SUM(dea.icu_patients),SUM(dea.hosp_patients)
FROM portfolio_project.covid_deaths AS dea
JOIN portfolio_project.covid_vaccinations AS vacc
ON dea.date=vacc.date
and dea.location = vacc.location
WHERE dea.continent<>''
GROUP BY dea.location,vacc.hospital_beds_per_thousand;
