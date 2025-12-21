---Select adalah perintah dasar untuk mendapatkan data
-- SELECT
--     column1
--     column2
-- FROM
--     TABLE

select *
  from contacts;

select first_name
  from contacts;

select customer_id,
       name,
       credit_limit
  from customers;