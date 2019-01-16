/* 文字列中の特定文字の出現回数カウント */
  SELECT
    (CHAR_LENGTH("列名") - CHAR_LENGTH(REPLACE("列名", 'カウントしたい文字列', ''))) / CHAR_LENGTH('カウントしたい文字列') AS "cnt"
  FROM
    tmp0
/* psqlからのcopy文 */
\copy "table名" from 'file path'  with encoding 'UTF8' csv delimiter ',' header ;
