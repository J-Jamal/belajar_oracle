-- order by adalah perintah di oracle untuk mengurutkan column
-- bisa secara asc atau dec
-- secara default oracle tidak mengurutkan data tanpa kita perintahkan, terlepas kapan data itu di input
-- SELECT
--     column1,
--     column2,
--     column3
-- FROM
--     nama_table
-- ORDER BY
--     column1 [ASC | DESC] [NULLS FIRST | NULLS LAST]
-- ASC --> menjadikan urutan nya menaik
-- DESC --> menjadikan urutan nya menurun
-- NULLS LAST --> menandakan nilai null di tempatkan di akhir setelah nilai non-null
-- NULLS FIRST --> menandakan nilai null di tempatkan di awal sebelum nilai non-null

select customer_id,
       name,
       address,
       credit_limit
  from customers;

--mengurutkan nama
select customer_id,
       name,
       address,
       credit_limit
  from customers
 order by name asc;

--mengurutkan first name default (asc) dan last name desc
select first_name,
       last_name
  from contacts
 order by first_name,
          last_name desc;

--mengurutkan menggunakan id
select name,
       credit_limit
  from customers ORDER BY 2 DESC, 1;

--mengurutkan nilai null menjadi paling bawah
SELECT COUNTRY_ID, CITY, STATE FROM LOCATIONS ORDER BY STATE ASC NULLS LAST;

--mengurutkan nama menjadi di atas
SELECT CUSTOMER_ID, NAME from CUSTOMERS order BY upper(NAME);
--mengurutkan dari yang terakhir
SELECT CUSTOMER_ID, STATUS, ORDER_DATE FROM orders ORDER BY ORDER_DATE DESC;