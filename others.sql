/* 文字列中の特定文字の出現回数カウント */
  SELECT
    (CHAR_LENGTH("列名") - CHAR_LENGTH(REPLACE("列名", 'カウントしたい文字列', ''))) / CHAR_LENGTH('カウントしたい文字列') AS "cnt"
  FROM
    tmp0
