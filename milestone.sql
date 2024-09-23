#Q1. What is the gender distribution of respondents from India?
SELECT gender, count(*) AS Count FROM kulturehire.milestone
where Country='India'
Group by Gender;
--------------------------------------------------------------------------------------------------------------
#Q2. What percentage of respondents from India are interested in education abroad and sponsorship?
SELECT 
  (count('Higher Education'='Need Sponsership')) / (count(*))*100 as Percentage
FROM 
    kulturehire.milestone

WHERE 
    country = 'India'
    group by 'Higher Education';
    ----------------------------------------------------------------------------------------------------------------------------------------
#Q3. What are the 6 top influences on career aspirations for respondents in India?
select "Influencing factors",count(*) as Count from kulturehire.milestone
where Country='India'
group by "Influencing factors"
order by Count desc
limit 6;
---------------------------------------------------------------------------------------------------------------------------------------------
#Q4. How do career aspiration influences vary by gender in India?
select "Influencing factors", Gender, count(*) as Count from kulturehire.milestone
where Country='India'
group by Gender
order by "Influencing factors";
----------------------------------------------------------------------------------------------------------------------------------------------
#Q5. What percentage of respondents are willing to work for a company for at least 3 years?
select 
((count("How likely are you to stay with one employer for 3+ years?"='Will work for 3 years or more'))/(count(*)))*100 as Percentage
from 
kulturehire.milestone

group by Country
order by Country;
---------------------------------------------------------------------------------------------------------------------------------------------------
#Q6. How many respondents prefer to work for socially impactful companies? 
select "Would you work for a company with no social impact mission?",count(*) as Count from kulturehire.milestone
group by Country;
----------------------------------------------------------------------------------------------------------------------------------------------------
#Q7. How does the preference for socially impactful companies vary by gender?
select "Would you work for a company with no social impact mission?",gender,count(*) as Count from kulturehire.milestone
group by Gender;
----------------------------------------------------------------------------------------------------------------------------------------------------
#Q8. What is the distribution of minimum expected salary in the first three years among respondents?
select Country,"Whatâ€™s your minimum monthly salary for the first 3 years?",Count(*) from kulturehire.milestone
group by Country
order by "Whatâ€™s your minimum monthly salary for the first 3 years?";
-------------------------------------------------------------------------------------------------------------------------------------------------------
#Q9. What is the expected minimum monthly salary in hand?
SELECT Country,MIN("Whatâ€™s your minimum starting monthly salary?") AS MinSalary FROM kulturehire.milestone 
group by Country
order by Country;
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Q10. What percentage of respondents prefer remote working?
select Country,(count("What is the most preferred working environment for you."='Fully Remote with options to travel as and when needed')/(count("What is the most preferred working environment for you."))*100) as Percentage 
from kulturehire.milestone
group by Country
order by Country;
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Q11. What is the preferred number of daily work hours?
select Country,max("How many hours would you be willing to work every day") as Max from kulturehire.milestone
group by Country;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Q12. What are the common work frustrations among respondents?
SELECT "What would frustrate you at work ?", COUNT(*)
FROM kulturehire.milestone
GROUP BY "What would frustrate you at work ?"
HAVING COUNT(*) > 1;
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Q13.  How does the need for work-life balance interventions vary by gender?
select Gender,"How often do you need a full week off for work-life balance?",count(*) as Count from kulturehire.milestone
group by Gender
order by Count asc;
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Q14. How many respondents are willing to work under an abusive manager?
select Country,"Would you work for a manager with a history of abuse?",count(*) as Count from kulturehire.milestone
group by Country;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Q15. What is the distribution of minimum expected salary after five years?
select Country,min("Whatâ€™s your minimum expected monthly salary after 5 years?")as Min from kulturehire.milestone
group by Country;
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Q16. What are the remote working preferences by gender?
select Country,"Would you work for a company with no remote work policy?",count(*) as Count from kulturehire.milestone
group by Country
order by Country desc;
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Q17. What are the top work frustrations for each gender?
select Gender,"What would frustrate you at work ?",count(*) as Count from kulturehire.milestone
group by Gender
order by "What would frustrate you at work ?" desc
limit 3;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Q18. What factors boost work happiness and productivity for respondents?
select Country,"What would make you happier and productive at work" from kulturehire.milestone
group by Country;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Q19. What percentage of respondents need sponsorship for education abroad?
select "Higher Education", Country, ((count("Higher Education" ='Need Sponsership')/(count("Higher Education")))*100) as Percentage from kulturehire.milestone
group by Country;
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

