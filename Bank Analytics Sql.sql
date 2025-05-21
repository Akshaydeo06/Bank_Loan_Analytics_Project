use bankanalytics;
select * from `bank loan`;
select COUNT(*) FROM `bank loan`;

#1. No. of loans
SELECT 
  CONCAT(ROUND(COUNT(*) / 1000, 2), 'K') AS Total_Loans
FROM 
  `bank loan`;
  
  #2.Total Collection
  SELECT 
  CONCAT(ROUND(SUM(`Total Collection`) / 1000000, 0), 'M') AS Total_Collection
FROM 
  `bank loan`;
  

#3.Total Funded Amount
SELECT 
  CONCAT(ROUND(SUM(`Funded amount`) / 1000000, 0), 'M') AS Total_Funded_Amount
FROM 
  `bank loan`;

#4.Total Interest
SELECT 
  CONCAT(ROUND(SUM((`Funded Amount` * `Int Rate` * `Year`) / 100) / 1000000, 2), 'M') AS Total_Interest
FROM 
  `bank loan`;

#5.Total Revenue
SELECT 
  CONCAT(ROUND(SUM(`Total Revenue`) / 1000000, 0), 'M') AS Total_Revenue
FROM 
  `bank loan`;

SELECT `Branch Name`,
       SUM(`Int Rate`) AS Total_Interest,
       SUM(`Total Fees`) AS Total_Fees,
       SUM(`Int Rate` + `Total Fees`) AS Total_Revenue
FROM `bank loan`
GROUP BY `Branch Name`;


SELECT `State Name`,
       COUNT(`Client id`) AS Total_Loans,
       SUM(`Loan Amount`) AS Total_Amount
FROM `bank loan`
GROUP BY `State Name`;



SELECT Religion,
       COUNT(`Client id`) AS Total_Loans,
       SUM(`Loan Amount`) AS Total_Amount
FROM `bank loan`
GROUP BY Religion;

SELECT `Product Id`,
       COUNT(`Client id`) AS Total_Loans,
       SUM(`Loan Amount`) AS Total_Amount
FROM `bank loan`
GROUP BY `Product Id`;


SELECT Grade,
       COUNT(`Client id`) AS Total_Loans,
       SUM(`Loan Amount`) AS Total_Amount
FROM `bank loan`
GROUP BY Grade;


SELECT COUNT(*) AS Default_Loan_Count
FROM `bank loan`
WHERE `Is Default Loan` = 1;


SELECT `Loan Status`,
       COUNT(*) AS Total_Loans,
       SUM(`Loan Amount`) AS Total_Amount
FROM `bank loan`
GROUP BY `Loan Status`;

SELECT Term,
       COUNT(*) AS Total_Loans,
       SUM(`Loan Amount`) AS Total_Amount
FROM `bank loan`
GROUP BY Term;

SELECT COUNT(*) AS No_Verified_Loans
FROM `bank loan`
WHERE `Verification Status` IS NULL OR `Verification Status` = 'Not Verified';












