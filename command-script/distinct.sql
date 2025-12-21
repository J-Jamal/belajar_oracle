--SELECT DISTINCT --> digunakan untuk memfilter baris duplicate
-- data kolom yang di kembalikan unik (tidak ada yang duplicate) untuk kolom yang ditentukan

--SELECT DISTINCT column_1
--FROM table;

--distinct untuk beberapa kolom
--SELCT
--  DISTINCT column_1
--  column_2
--  column_3
--FROM
--  table_name;

SELECT DISTINCT FIRST_NAME FROM CONTACTS ORDER BY FIRST_NAME ASC;

--distinct tidak bisa menghapus data yang sama jika ada nilai (misal:quantity) yang nilainya berbeda
SELECT DISTINCT PRODUCT_ID, QUANTITY from ORDER_ITEMS ORDER BY PRODUCT_ID;

--distinct tidak bisa menghapus nilai null yang duplicate
SELECT STATE FROM LOCATIONS ORDER BY STATE nulls FIRST;