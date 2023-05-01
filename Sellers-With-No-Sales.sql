SELECT distinct seller_name
FROM Seller s
LEFT JOIN Orders o ON o.seller_id = s.seller_id
GROUP BY seller_name
HAVING count(CASE WHEN Year(sale_date)=2020 THEN order_id else null end) = 0
ORDER BY 1
