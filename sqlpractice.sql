SELECT * from "Customer"

/* 
In this i joined two datasets Customer and Invoice on common COLUMN CustomerId in both the tables
*/

SELECT C.FirstName, C.LastName , I.InvoiceDate, I.total
FROM Customer C
JOIN  Invoice I ON 
C.CustomerId = I.CustomerId
WHERE total BETWEEN 1.98 AND 5		--used BETWEEN operator
ORDER BY 
InvoiceDate,
FirstName ASC;
--------------------------------------------------------------------------------------
/*
in this QUERY, I joined THREE tables. FIrst I joined Customer and Invoice tables and next I joined Invoice and InvoiceLine tables 
*/
SELECT C.FirstName, C.LastName , I.InvoiceDate, INL.UnitPrice, I.total
FROM Customer C
 LEFT JOIN  Invoice I ON 
C.CustomerId = I.CustomerId
 LEFT JOIN InvoiceLine INL ON
I.InvoiceId = INL.InvoiceId
WHERE total =1.98		
ORDER BY 
InvoiceDate,
FirstName ASC;

--------------------------------------------------------------------------------------
/*
in this QUERY, I joined Customer and Invoice tables with the help of  "USING" keyword on common COLUMN CustomerId
*/
SELECT C.FirstName, C.LastName , I.InvoiceDate, I.total
FROM Customer C
JOIN  Invoice I
USING (CustomerId)
WHERE total IN (1.98, 3.96)		--used IN operator
ORDER BY 
InvoiceDate,
FirstName ASC;

SELECT * from "MediaType"