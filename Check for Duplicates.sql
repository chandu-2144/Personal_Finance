SELECT Category, COUNT(*)
FROM Budget
GROUP BY Category
HAVING COUNT(*) > 1;
