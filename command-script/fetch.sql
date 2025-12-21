-- FETCH
-- Perintah ini mirip dengan limit pada MySQL dan PostgreSQL
-- tujuannya membatasi pengambilan data
-- select * from inventories inner join prodcts using(product_id)
-- order by quantity desc limit 5;
-- [ OFFSET offset ROWS ]
-- FETCH NEXT [ row_count | percent PERCENT ] ROWS [ ONLY | WITH TIES ]


-- Menampilkan 10 data teratas
SELECT PRODUCTS.PRODUCT_NAME, inventories.QUANTITY from inventories INNER JOIN PRODUCTS USING (PRODUCT_ID) ORDER BY inventories.QUANTITY desc FETCH NEXT 10 ROWS ONLY;

-- Menampilkan 10 data teratas tetapi bisa menampilkan data yang sama
SELECT PRODUCTS.PRODUCT_NAME, inventories.QUANTITY from inventories INNER JOIN PRODUCTS USING (PRODUCT_ID) ORDER BY inventories.QUANTITY desc FETCH NEXT 10 ROWS WITH TIES;

-- Membatasi dengan persentase
SELECT PRODUCTS.PRODUCT_NAME, INVENTORIES.QUANTITY FROM INVENTORIES INNER JOIN PRODUCTS USING(PRODUCT_ID) ORDER BY INVENTORIES.QUANTITY desc FETCH FIRST 5 PERCENT ROWS ONLY;

--Offset (menambil 5 data selanjutnya)
SELECT PRODUCTS.PRODUCT_NAME, INVENTORIES.QUANTITY FROM INVENTORIES INNER JOIN PRODUCTS USING(PRODUCT_ID) ORDER BY INVENTORIES.QUANTITY desc OFFSET 5 ROWS FETCH NEXT 5 ROWS ONLY;