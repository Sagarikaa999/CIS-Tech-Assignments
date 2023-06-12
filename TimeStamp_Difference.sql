CREATE TABLE CustomerDates (
  CustID INT,
  Dates DATE
);


INSERT INTO CustomerDates (CustID, Dates)
VALUES
  (121, '2023-11-01'),
  (121, '2023-12-01'),
  (121, '2023-08-01'),
  (121, '2023-01-01'),
  (232, '2022-01-01'),
  (232, '2023-06-01'),
  (232, '2022-05-01');
  
SELECT CustID, Dates,
  TIMESTAMPDIFF(MONTH,MIN(Dates) OVER (PARTITION BY CustID ORDER BY Dates), Dates) AS MonthDifference
FROM CustomerDates ;  
