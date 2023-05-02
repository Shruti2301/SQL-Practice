SELECT max(num) AS num
FROM 
(SELECT num
 FROM MyNumbers
GROUP BY 1
HAVING count(*)=1) b
