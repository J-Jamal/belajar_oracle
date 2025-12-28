-- IS NULL dan IS NOT NULL
-- adalah operator yang digunakan untuk memeriksa apakah nilai dalam kolom adalah null atau tidak
-- null itu bukan 0 dan bukan white space, null adalah nothing
-- nilai null tidak bisa dibandingkan dengan null itu sendiri
-- expression | column is NULL

-- perintah null
SELECT * FROM orders WHERE SALESMAN_ID is NULL ORDER BY SALESMAN_ID DESC;

-- perintah is not null
SELECT * FROM orders WHERE SALESMAN_ID is NOT NULL ORDER BY SALESMAN_ID DESC;