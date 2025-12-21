-- Oracle AND Operator
-- akan bernilai true jika keduanya bernilai true

--          | TRUE | FALSE | NULL |
--   | TRUE | TRUE | FALSE | NULL |
--   | FALSE| FALSE| FALSE | FALSE|
--   | NULL | NULL | FALSE | NULL |

-- Mencari data dengan status pendig di customer id 2 dan bernilai true
SELECT ORDER_ID, CUSTOMER_ID, STATUS, ORDER_DATE FROM orders where STATUS='Pending' and CUSTOMER_ID=2;

--Mencari data lebih dari 2, dengan status shipped, salesman_id 60 dan order date 2017
SELECT ORDER_ID, CUSTOMER_ID, STATUS, ORDER_DATE, SALESMAN_ID from ORDERS WHERE STATUS='Shipped' and SALESMAN_ID=60 and EXTRACT(year from ORDER_DATE) =2017 ORDER BY ORDER_DATE;

--Mencari dua status dan customer id
SELECT ORDER_ID, CUSTOMER_ID, STATUS, ORDER_DATE from ORDERS
WHERE
(
    STATUS ='Canceled' or STATUS='Pending'
)AND CUSTOMER_ID=44;
