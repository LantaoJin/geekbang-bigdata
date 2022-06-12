--ClickHouse
CREATE MATERIALIZED VIEW [myname].basic_v1
ENGINE = AggregatingMergeTree() PARTITION BY toYYYYMM(StartDate) ORDER BY (CounterID, StartDate)
AS SELECT
    CounterID,
    StartDate,
    sumState(Sign)    AS Visits,
    uniqState(UserID) AS Users
FROM [myname].visits_v1
GROUP BY CounterID, StartDate;
