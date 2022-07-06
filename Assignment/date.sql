DECLARE @datecol datetime = '2022-07-19';
DECLARE @WeekNum INT
      , @YearNum char(4);

SELECT @WeekNum = DATEPART(WK, @datecol)
     , @YearNum = CAST(DATEPART(YY, @datecol) AS CHAR(4));

-- once you have the @WeekNum and @YearNum set, the following calculates the date range.
SELECT CONVERT(DATE, DATEADD(wk, DATEDIFF(wk, 0, '1/1/' + @YearNum) + (@WeekNum-1), 0)) AS StartOfWeek;
SELECT CONVERT(DATE,DATEADD(wk, DATEDIFF(wk, 6, '1/1/' + @YearNum) + (@WeekNum), 6)) AS EndOfWeek;