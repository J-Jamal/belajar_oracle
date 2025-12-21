-- Tabel dan Kolom Alias
-- adalah nama pengganti untuk tabel dan kolom

-- select list-table as alias from table_name;
-- select list-table alias from table_name;

SELECT FIRST_NAME as fname, LAST_NAME as lname from employees ORDER BY FIRST_NAME;

SELECT FIRST_NAME fname, LAST_NAME lname from employees ORDER BY FIRST_NAME;

-- menggunakan alias kolom untuk membuat judul lebih bermakna
-- secara default oracle akan engkapitalisasi judul
-- jika tidak menginginkannya maka harus tambahkan tanda petik

SELECT FIRST_NAME "fname", LAST_NAME "lname" from employees ORDER BY FIRST_NAME;

SELECT FIRST_NAME "Nama Depan", LAST_NAME "Nama Belakang" from employees ORDER BY FIRST_NAME;

-- Menggabungkan dua kolom dan merubahnya dengan alias
SELECT FIRST_NAME||' '||LAST_NAME as "Full Name" FROM EMPLOYEES ORDER by FIRST_NAME;

-- menggabungkan menggunakan operator bilangan dan merubahnya dengan alias
SELECT PRODUCT_NAME, LIST_PRICE-STANDARD_COST as gross_profit FROM PRODUCTS;

SELECT PRODUCT_NAME, LIST_PRICE-STANDARD_COST as gross_profit FROM PRODUCTS ORDER by gross_profit DESC;

-- alias tabel dengan data yang saya tapi dengan alias yang berbeda untuk membedakan antara dua tabel yang sama tapi dianggap tabel yang berbeda dengan alias
SELECT e.FIRST_NAME, m.LAST_NAME FROM EMPLOYEES e INNER join EMPLOYEES m on e.EMPLOYEE_ID=m.EMPLOYEE_ID;