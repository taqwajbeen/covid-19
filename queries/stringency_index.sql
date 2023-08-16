-- Stringency Index for different countries
SELECT  MAX(stringency_index),location
FROM portfolio_project.covid_vaccinations AS vacc
WHERE vacc.continent<>''
GROUP BY location;

