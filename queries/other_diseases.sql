-- Categories of people affected based on other diseases
SELECT dea.location,MAX(vacc.diabetes_prevalence),MAX(vacc.female_smokers),MAX(vacc.male_smokers)
FROM portfolio_project.covid_deaths AS dea
JOIN portfolio_project.covid_vaccinations AS vacc
ON dea.date=vacc.date
and dea.location = vacc.location
WHERE dea.LOCATION LIKE '%WORLD%'
GROUP BY dea.location;
