SELECT
    Prices.product_id,
    ROUND(SUM(Prices.price * UnitsSold.units) / SUM(UnitsSold.units), 2) as average_price
FROM
    Prices
INNER JOIN
    UnitsSold
ON
    UnitsSold.purchase_date BETWEEN Prices.start_date AND Prices.end_date
    AND
    UnitsSold.product_id = Prices.product_id
GROUP BY
    Prices.product_id
