/* 顧客IDをユニークに取得したい場合 WITH句使用 */
/* 各顧客IDごとに日付の古い順番で連番を付与 seq = 1 を取得 */
/* row_number() 関数を使用 */
WITH tmp0 AS (
  SELECT
    "userid"
    , TO_TIMESTAMP("date" || "hour" || "minute", 'YYYYMMDDHH24MI') AS "date"
  FROM
    test
  ORDER BY
    "userid" ASC
    , TO_TIMESTAMP("date" || "hour" || "minute", 'YYYYMMDDHH24MI') ASC
), tmp1 AS (
  SELECT
    *
    , row_number() over (partition by "userid") as seq -- ※ここが重要※
  FROM
    "tmp0"
  ORDER BY
    "userid" ASC
    , "date" ASC
)
SELECT
  *
FROM
  "tmp1"
WHERE
  "seq" = 1
