-- Operator Like
-- operator like digunakan untuk menguji data dengan patern tertentu
-- contoh kita ingin mendapatkan data employee yang mengandung nama depan dengan awalan robert
-- untuk mendapatkannya kita bisa menggunakan like
-- perintah dasarnya expression [NOT] like pattern [ESCAPE escape_characters]
-- '' hasil seperti sama dengan
-- '%xxx' mengandung akhiran xxx
-- 'xxx%' mengandung awalan xxx
-- '%xxx%' mengandung karakter xxx
-- '_xx,
-- 'xx_%'

-- contoh mencari contact dengan nama akhir dengan awalan st
SELECT FIRST_NAME, LAST_NAME, PHONE FROM contacts WHERE LAST_NAME LIKE 'St%';

-- mencari contact dengan nama akhir er
SELECT FIRST_NAME, LAST_NAME, PHONE FROM contacts WHERE LAST_NAME LIKE '%er';

-- mencari contact dengan nama tengah er
SELECT FIRST_NAME, LAST_NAME, PHONE FROM contacts WHERE LAST_NAME LIKE '%er%';

-- karena sql case sensitif maka untuk pencariannya bisa menggunakan upper dan lower
SELECT FIRST_NAME, LAST_NAME, PHONE FROM contacts WHERE lower(LAST_NAME) LIKE lower ('%er');

-- bisa menggunakan perintah not
SELECT FIRST_NAME, LAST_NAME, PHONE FROM contacts WHERE PHONE NOT LIKE ('+1%');

-- mencari data by _
SELECT FIRST_NAME, LAST_NAME, PHONE FROM contacts WHERE FIRST_NAME LIKE ('Je_i') ORDER BY FIRST_NAME;
SELECT FIRST_NAME, LAST_NAME, PHONE FROM contacts WHERE FIRST_NAME LIKE ('Je_%') ORDER BY FIRST_NAME;


INSERT INTO discounts (product_id, discount_message)
VALUES(1,
    'Buy 1 get 25% OFF and 2nd');

INSERT INTO discounts (product_id, discount_message)
VALUES(2,
    'Buy 2 get 50% OFF and 3nd');

INSERT INTO discounts (product_id, discount_message)
VALUES(1,
    'Buy 3 get 1 free');

-- fungsi escape untuk bisa melakukan pencarian dengan %
SELECT PRODUCT_ID, DISCOUNT_MESSAGE FROM discounts WHERE DISCOUNT_MESSAGE LIKE '%25!%%' ESCAPE '!';