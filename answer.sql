-- TYPE YOUR SQL QUERY BELOW

-- PART 1: Create a SQL query that maps out the daily average users before and after the feature change
.open shiptivity.db

SELECT AVG(unique_visitors)
FROM (
  SELECT
    COUNT(DISTINCT id) as unique_visitors
  FROM login_history
  WHERE login_timestamp < strftime('%s', '2018-06-02')
  GROUP BY date(login_timestamp, 'unixepoch')
);

SELECT AVG(unique_visitors)
FROM (
  SELECT
    COUNT(DISTINCT id) as unique_visitors
  FROM login_history
  WHERE login_timestamp >= strftime('%s', '2018-06-02')
  GROUP BY date(login_timestamp, 'unixepoch')
);

-- Average unique users per day rises from 4.43 before the change to 14.58 after

-- PART 2: Create a SQL query that indicates the number of status changes by card

SELECT AVG(changes)
FROM (
  SELECT COUNT(*) as changes
  FROM card_change_history
  GROUP BY cardId
);


-- Each card was changed on average 2.43 times
