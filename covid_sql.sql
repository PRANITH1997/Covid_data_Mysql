SELECT * FROM covid_project.covid_deaths
where continent is not null;


select continent, location, date, population, total_cases, total_deaths  from covid_project.covid_deaths
order by population;

/*total cases vs total deaths */
SELECT location, date, total_cases, total_deaths, ((total_deaths/total_cases) * 100) as percent_deaths FROM covid_deaths
order by location, date;


SELECT location,date, population, total_cases, total_deaths, ((total_deaths/total_cases) * 100) as percent_deaths, ((total_cases/population)*100) as percent_cases FROM covid_deaths
where location = 'India'
order by percent_deaths desc, percent_cases desc
limit 10;

SELECT location,date, population, total_cases, total_deaths, ((total_deaths/total_cases) * 100) as percent_deaths, ((total_cases/population)*100) as percent_cases FROM covid_deaths
where total_cases > 100 and total_deaths > 100
order by percent_deaths desc, percent_cases desc
limit 10;

 /* COUNTRIES WITH HIGH INFECTION RATE*/
SELECT LOCATION, MAX(total_cases) as total_cases, max((total_cases/population)*100) as percent_cases, max((total_deaths/total_cases) * 100) as percent_deaths from covid_deaths
group by location
having location = 'India'
order by total_cases desc;

select location, max(cast(total_deaths as signed)) as total_deaths from covid_deaths
where continent is not null
group by location
/*having total_deaths>100*/
order by total_deaths DESC;

/* continents with higher death counts per population*/
select continent, max(cast((total_deaths/total_cases)*100 as signed)) as percent_deaths from covid_deaths
where continent is not null
group by continent;

select count(*) from covid_deaths
where continent is  not null;

select sum(total_cases) as total_cases, sum(total_deaths) as total_death, (sum(total_deaths)/sum(total_cases))*100 from covid_deaths
order by total_cases;

select sum(d.population), sum(d.total_cases), sum(d.total_deaths), sum(d.new_cases), sum(d.new_deaths), sum(v.total_tests), sum(v.new_tests), sum(v.positive_rate), sum(v.total_vaccinations) from covid_deaths d
join covid_vaccination v on d.iso_code = v.iso_code and d.location = v.location;

select * from covid_deaths d
join covid_vaccination v on d.location = v.location and v.date = d.date
where total_cases > 500
order by new_vaccinations;

select d.continent, d.location, d.date, d.population, v.new_vaccinations, sum(v.new_vaccinations) over (partition by d.location order by d.location, d.date) from covid_deaths d
join covid_vaccination v on d.location = v.location and d.date = v.date
where d.continent is not null
order by d.continent, d.location, d.date desc

