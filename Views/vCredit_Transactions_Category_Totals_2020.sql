/*
Author: Austin Stockwell
  Type: VIEW
  Scope: To get monthly totals for spending in each Credit Card Transaction Liability Category
  Directions:  FIND AND REPLACE ALL dates (using COMMAND +F) and run query.
  */

USE Stockwell_Financial;
CREATE VIEW vCredit_Transactions_Category_Totals_2020
AS
-- -----------------------------------------
-- HOW MUCH SPENT ON GASOLINE
-- ----------------------------------------
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 10
and charge_date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- HOW MUCH SPENT ON CAR REPAIRS
-- ----------------------------------------
UNION 
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 11
and charge_date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- HOW MUCH SPENT ON GROCERIES
-- ----------------------------------------
UNION 
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 12
and charge_date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- HOW MUCH SPENT ON BOOKS
-- ----------------------------------------
UNION 
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 17
and charge_date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- HOW MUCH SPENT ON HOBBIES
-- ----------------------------------------
UNION 
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 18
and charge_date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- HOW MUCH SPENT ON MUSIC
-- ----------------------------------------
UNION 
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 19
and charge_date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- HOW MUCH SPENT ON RESTAURANT
-- ----------------------------------------
UNION 
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 20
and charge_date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- HOW MUCH SPENT ON ENTERTAINMENT
-- ----------------------------------------
UNION 
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 21
and charge_date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- HOW MUCH SPENT ON CLOTHING
-- ----------------------------------------
UNION 
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 22
and charge_date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- HOW MUCH SPENT ON TRAVEL
-- ----------------------------------------
UNION 
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 23
and charge_date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- HOW MUCH SPENT ON JEWELERY
-- ----------------------------------------
UNION 
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 24
and charge_date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- HOW MUCH SPENT ON HOME IMPROVEMENT
-- ----------------------------------------
UNION 
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 25
and charge_date between '2020-01-01' and '2020-12-31'
-- -----------------------------------------
-- HOW MUCH SPENT ON MISCELLANEOUS
-- ----------------------------------------
UNION 
SELECT 
    fk_liability_category_ID,
    Liability_Category.name,
    COUNT(*), SUM(charge) total
FROM 
    Credit_Transaction
JOIN Liability_Category ON Credit_Transaction.fk_liability_category_ID = Liability_Category.idLiability_Category
WHERE fk_liability_category_ID = 100
and charge_date between '2020-01-01' and '2020-12-31'
ORDER BY fk_liability_category_ID DESC;