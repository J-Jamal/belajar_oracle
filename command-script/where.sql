-- Kata kunci WHERE
-- klausa where menentukan kondisi pencarian untuk baris yang di kembalikan oleh pernyataan select
-- SELECT
--      select list
-- FROM
--      search_condition
-- ORDER BY
--      sort_expression;


-- Where berfungsi sebagai pencari/search dan untuk penggunaan nya sangat case sensitive harus sama persis
SELECT PRODUCT_NAME, DESCRIPTION, LIST_PRICE, CATEGORY_ID FROM products WHERE PRODUCT_NAME = 'Kingston';

-- =                Equality
-- !=, <>           Inequality
-- >                Greater than
-- <                Less than
-- >=               Greater than or equal to
-- <=               Less than or equal to

-- IN               Equal to any value in a list of values
-- ANY / SOME / ALL Compare a value to a list of subquer. it must be proceded by another operator such as =, >, <
-- NOT IN           Not equal to any value in a list of values
-- [NOT] BETWEEN    n and m Equivalent to [Not] >= n and < = y
-- IS [NOT] NULL    NULL test

-- mencari data dengan dua kondisi(price lebih dari 500) dan category id nya 4
SELECT PRODUCT_NAME, LIST_PRICE FROM PRODUCTS WHERE LIST_PRICE > 500 and CATEGORY_ID = 4;

-- mencari data diantara nilai 650 sampai 680
SELECT PRODUCT_NAME, LIST_PRICE FROM PRODUCTS WHERE LIST_PRICE BETWEEN 650 and 680 ORDER BY LIST_PRICE;

-- mencari data menggunakan id
SELECT PRODUCT_NAME, LIST_PRICE FROM PRODUCTS WHERE CATEGORY_ID IN(1,4);

-- mencari data menggunakan id
SELECT PRODUCT_NAME, LIST_PRICE FROM PRODUCTS WHERE CATEGORY_ID =1 or CATEGORY_ID =4;

-- mencari nama dengan spesifik
SELECT PRODUCT_NAME, LIST_PRICE FROM PRODUCTS where PRODUCT_NAME LIKE 'Asus%' ORDER by PRODUCT_NAME;