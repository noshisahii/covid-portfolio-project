--SELECT *
--FROM coviddeath


--looking total cause vs total deaths

--SELECT cv.location,date,total_cases,total_deaths, 
--(total_deaths/total_cases)*100 as deaths_percentage
--FROM covidvaccination as cv
--where location like '%pakistan%'
--ORDER BY 1,2

--looking total cause vs population
--shows that population which effected by covied
--SELECT cv.location,date,population,total_cases, 
--(total_cases/population)*100 as population_percentage
--FROM covidvaccination as cv
--where location like '%pakistan%'
--ORDER BY 1,2


--looking at counties with hightest infection rate  compared to population
--SELECT cv.location,population,MAX(total_cases) AS hightestInfectionCount, 
--MAX((total_cases/population))*100 as populationInfectedPercentage
--FROM covidvaccination as cv
----where location like '%pakistan%'
--GROUP BY LOCATION, population
--ORDER BY populationInfectedPercentage desc


----showing countries with highest death count per population
--SELECT location,population,  MAX(CAST(total_deaths as int)) as TotalDeathsCount
--FROM covidvaccination as cv
--where continent is not null
--GROUP BY LOCATION, population
--ORDER BY totaldeathscount desc

--showing  continent with highest death count per population
SELECT continent,  MAX(CAST(total_deaths as int)) as TotalDeathsCount
FROM covidvaccination as cv
where continent is not null
GROUP BY continent
ORDER BY totaldeathscount desc

--select *
--from covidvaccination