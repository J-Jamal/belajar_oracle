-- Operator OR
-- Or adalah operasi logika membandingkan 2 boolean atau lebih syaratnya jika salah satu bernilai true maka akan true

-- Operasi satu or dengan membandingkan status pending dan status canceled
SELECT ORDER_ID, CUSTOMER_ID, STATUS, ORDER_DATE FROM orders WHERE STATUS='Pending' OR STATUS='Canceled' ORDER BY ORDER_DATE DESC;

-- Menggunakan OR lebih dari 1
SELECT ORDER_ID, CUSTOMER_ID, STATUS, ORDER_DATE from ORDERS WHERE SALESMAN_ID=60 OR SALESMAN_ID=61 or SALESMAN_ID=62 ORDER BY ORDER_DATE;

-- Menggunakan IN hampir sama dengan OR
SELECT ORDER_ID, CUSTOMER_ID, STATUS, ORDER_DATE FROM ORDERS WHERE SALESMAN_ID IN(60,61,62) ORDER BY ORDER_DATE;

-- Memadukan AND dan OR 
SELECT ORDER_ID, CUSTOMER_ID, STATUS, ORDER_DATE FROM ORDERS WHERE (STATUS='Canceled' OR STATUS='Pending') AND CUSTOMER_ID=44 ORDER BY ORDER_DATE;