-- Operator IN
-- Operator oracle IN menentukan apakah suatu nilai cocok dengan nilai apapun dalam daftar atau subquery
-- expression NOT  IN (v1, v2, ...)
-- expression NOT IN (subquery)

-- Menampilkan data hanya range 54,55,56
SELECT ORDER_ID, CUSTOMER_ID, STATUS, SALESMAN_ID FROM orders WHERE SALESMAN_ID IN (54,55,56) ORDER BY ORDER_ID;

--Menampilkan data In dalam berupa string
SELECT ORDER_ID, CUSTOMER_ID, STATUS, SALESMAN_ID FROM ORDERS WHERE STATUS IN ('Pending', 'Canceled') ORDER BY ORDER_ID;

-- Menampilkan data NOT IN (selain)
SELECT ORDER_ID, CUSTOMER_ID, STATUS, SALESMAN_ID FROM ORDERS WHERE STATUS NOT IN ('Pending', 'Canceled') ORDER BY ORDER_ID;

-- Menampilkan data IN dengan subquery
SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME FROM EMPLOYEES
WHERE EMPLOYEE_ID IN
    (SELECT DISTINCT SALESMAN_ID FROM ORDERS
    WHERE ORDERS.STATUS='Canceled')
    ORDER BY EMPLOYEES.EMPLOYEE_ID;

-- Menampilkan data not in
SELECT CUSTOMER_ID, NAME FROM CUSTOMERS WHERE CUSTOMER_ID NOT IN (SELECT CUSTOMER_ID FROM ORDERS);