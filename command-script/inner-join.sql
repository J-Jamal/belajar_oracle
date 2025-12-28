-- menggabungkan dua tabel atau lebih untuk menampilkan data yang memiliki
-- kesamaan atau pasangan di semua tabel yang terlibat, 
-- berdasarkan kolom kunci yang sama (misalnya PRIMARY KEY dan FOREIGN KEY)

-- SELECT
-- *
-- FROM
-- T1
-- INNER JOIN T2 ON join_predicate;

-- bisa menggunakan ON =
SELECT * FROM orders INNER JOIN ORDER_ITEMS
ON ORDER_ITEMS.ORDER_ID=orders.ORDER_ID
ORDER BY orders.ORDER_DATE desc;


-- SELECT
-- *
-- FROM
-- T1
-- INNER JOIN T2 USING(c1, c2, ...);

-- bisa menggunakan using jika nama kolom sama
SELECT * FROM ORDERS INNER JOIN ORDER_ITEMS
USING (ORDER_ID) ORDER BY ORDERS.ORDER_DATE desc;

-- inner join lebih dari 2
SELECT name as customer_name,
ORDER_ID,
ORDER_DATE,
ITEM_ID,
QUANTITY,
UNIT_PRICE
FROM ORDERS INNER JOIN ORDER_ITEMS USING (ORDER_ID)
INNER JOIN CUSTOMERS USING (CUSTOMER_ID)
INNER JOIN PRODUCTS USING (PRODUCT_ID)
ORDER BY ORDER_DATE desc, ORDER_ID desc, ITEM_ID asc;