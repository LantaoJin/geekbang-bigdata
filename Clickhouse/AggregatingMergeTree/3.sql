--ClickHouse
SELECT
    StartDate,
    sumMerge(Visits) AS Visits,
    uniqMerge(Users) AS Users
FROM [myname].basic_v1
GROUP BY StartDate
ORDER BY StartDate;
