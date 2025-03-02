SELECT 
    b.Category, 
    b.Amount AS Budget_Amount, 
    IFNULL(SUM(e.Amount), 0) AS Actual_Spending, 
    (b.Amount - IFNULL(SUM(e.Amount), 0)) AS Difference
FROM Budget b
LEFT JOIN Expenses e ON b.Category = e.Category
GROUP BY b.Category, b.Amount;
