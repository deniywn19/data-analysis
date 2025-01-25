--display table info
PRAGMA table_info(Financials)

--remorfat data on Financials
UPDATE Financials
SET
    _Units_Sold_ = CAST(REPLACE(REPLACE(_Units_Sold_, '$', ''), ',', '') AS FLOAT),
    _Manufacturing_Price_ = CAST(REPLACE(REPLACE(_manufacturing_price_, '$', ''), ',', '') AS FLOAT),
    _Sale_Price_ = CAST(REPLACE(REPLACE(_Sale_Price_, '$', ''), ',', '') AS FLOAT),
    _Gross_Sales_ = CAST(REPLACE(REPLACE(_Gross_Sales_, '$', ''), ',', '') AS FLOAT),
    _Discounts_ = CAST(REPLACE(REPLACE(REPLACE(_Discounts_, '$-', '-'), '$', ''), ',', '') AS FLOAT),
    __Sales_ = CAST(REPLACE(REPLACE(__Sales_, '$', ''), ',', '') AS FLOAT),
    _COGS_ = CAST(REPLACE(REPLACE(_COGS_, '$', ''), ',', '') AS FLOAT),
    _Profit_ = CAST(REPLACE(REPLACE(_Profit_, '$', ''), ',', '') AS FLOAT);
      
  --check data
  SELECT * FROM Financials limit 5;

/*
--check duplicate on Financials
SELECT*
FROM Financials
Group BY Segment, Country, _Product_, _Discount_Band_, _Units_Sold_, _Manufacturing_Price_,_Sale_Price_,_Gross_Sales_,_Discounts_,__Sales_,_COGS_,_Profit_ ,Month_Number, _Month_Name_ 
Having COUNT(*) >1;


--check Missing Value on Financials
SELECT
    SUM(CASE WHEN Segment IS NULL THEN 1 ELSE 0 END) AS Missing_Segment,
    SUM(CASE WHEN Country IS NULL THEN 1 ELSE 0 END) AS Missing_Country,
    SUM(CASE WHEN _Product_ IS NULL THEN 1 ELSE 0 END) AS Missing_Product,
    SUM(CASE WHEN _Discount_Band_ IS NULL THEN 1 ELSE 0 END) AS Missing_Discount_Band,
    SUM(CASE WHEN _Units_Sold_ IS NULL THEN 1 ELSE 0 END) AS Missing_Units_Sold,
    SUM(CASE WHEN _Manufacturing_Price_ IS NULL THEN 1 ELSE 0 END) AS Missing_Manufacturing_Price,
    SUM(CASE WHEN _Sale_Price_ IS NULL THEN 1 ELSE 0 END) AS Missing_Sale_Price,
    SUM(CASE WHEN _Gross_Sales_ IS NULL THEN 1 ELSE 0 END) AS Missing_Gross_Sales,
    SUM(CASE WHEN _Discounts_ IS NULL THEN 1 ELSE 0 END) AS Missing_Discounts,
    SUM(CASE WHEN __Sales_ IS NULL THEN 1 ELSE 0 END) AS Missing_Sales,
    SUM(CASE WHEN _COGS_ IS NULL THEN 1 ELSE 0 END) AS Missing_COGS,
    SUM(CASE WHEN _Profit_ IS NULL THEN 1 ELSE 0 END) AS Missing_Profit,
    SUM(CASE WHEN Date IS NULL THEN 1 ELSE 0 END) AS Missing_Date,
    SUM(CASE WHEN Month_Number IS NULL THEN 1 ELSE 0 END) AS Missing_Month_Number,
    SUM(CASE WHEN _Month_Name_ IS NULL THEN 1 ELSE 0 END) AS Missing_Month_Name,
    SUM(CASE WHEN Year IS NULL THEN 1 ELSE 0 END) AS Missing_Year
 FROM Financials;
 */