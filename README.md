# sql sequence
最も古い日付(date)の顧客ID(useid)を取得したい時に使用

```ROW_NUMBER() OVER(PARTITION BY userid ORDER BY userid, date ASC) seq```

## ROW_NUMBER()
1. PARTITION BY userid で userid 毎にグループ化する
2. ORDER BY userid, date ASC で userid、dateを昇順で並び変える
3. ROW_NUMBER() で各userid毎に連番を降る
