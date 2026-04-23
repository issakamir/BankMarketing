SELECT count(*) from bank;

/* REMOVE 'LIMIT 500' FROM THE BOTTOM */
SELECT job, count(*) as total_clients,
SUM(CASE WHEN deposit='yes' THEN 1 ELSE 0 END) as subscribed,
ROUND(SUM(CASE WHEN deposit='yes' THEN 1 ELSE 0 END)*1.0/COUNT(*), 3) as conversion_rate
FROM bank
GROUP BY job
ORDER BY conversion_rate desc;

/* REMOVE 'LIMIT 500' FROM THE BOTTOM */
SELECT job, count(*) as total_clients,
       AVG(balance) as avg_balance,
       SUM(CASE WHEN deposit='yes' THEN 1 ELSE 0 END) as subscribed,
       ROUND(SUM(CASE WHEN deposit='yes' THEN 1 ELSE 0 END)*1.0/COUNT(*), 3) as conversion_rate
FROM bank
GROUP BY job
ORDER BY conversion_rate desc;

SELECT job, housing, count(*) as total_clients,
       ROUND(SUM(CASE WHEN deposit='yes' THEN 1 ELSE 0 END)*1.0/COUNT(*), 3) as conversion_rate
FROM bank
WHERE job IN ('blue-collar', 'retired')
GROUP BY job, housing

SELECT month, count(*) as total_clients,
SUM(CASE WHEN deposit='yes' THEN 1 ELSE 0 END) as subscribed,
ROUND(SUM(CASE WHEN deposit='yes' THEN 1 ELSE 0 END)*1.0/count(*), 3) as converstion_rate
FROM bank
GROUP BY month
ORDER BY converstion_rate DESC 

SELECT
    CASE
        WHEN age<'30' THEN '1. Young (under 30)'
        WHEN age BETWEEN 30 AND 60 THEN '2. Adult (between 30 and 60)'
        ELSE '3. Old (60+)'
    END AS life_stage,
        count(*) as total_clients,
       ROUND(AVG(duration), 0) as avg_call_duration,
       SUM(CASE WHEN deposit='yes' THEN 1 ELSE 0 END) as subscribed,
       ROUND(SUM(CASE WHEN deposit='yes' THEN 1 ELSE 0 END)*1.0/count(*), 3) as converstion_rate
FROM bank
GROUP BY 1
ORDER BY 1

SELECT bank.poutcome as outcome, count(*) as total_clients,
    ROUND(SUM(CASE WHEN deposit='yes' THEN 1 ELSE 0 END)*1.0/COUNT(*), 3) as conversion_rate
FROM bank
GROUP BY outcome
ORDER BY conversion_rate DESC


SELECT bank.campaign, count(*) as total_clients,
       ROUND(SUM(CASE WHEN deposit='yes' THEN 1 ELSE 0 END)*1.0/COUNT(*), 3) as conversion_rate
FROM bank
WHERE campaign <=100
GROUP BY 1
ORDER BY conversion_rate DESC

SELECT contact,job, COUNT(*) as total_clients,
       ROUND(SUM(CASE WHEN bank.deposit='yes' THEN 1 ELSE 0 END)*1.0/COUNT(*), 3) as conversion_rate
FROM bank
GROUP BY 1, 2
ORDER BY conversion_rate DESC 

SELECT marital, education, COUNT(*) as total_clients,
       ROUND(SUM(CASE WHEN bank.deposit='yes' THEN 1 ELSE 0 END)*1.0/COUNT(*), 3) as conversion_rate
FROM bank
GROUP BY 1, 2
ORDER BY conversion_rate DESC 