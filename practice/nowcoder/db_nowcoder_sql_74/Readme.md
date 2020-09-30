# Sql 74

牛客每次举办企业笔试的时候，企业一般都会有不同的语言岗位，比如C++工程师，JAVA工程师，Python工程师，每个用户笔试完有不同的分数

请你找出每个岗位分数排名前2的用户，得到的结果先按照language的name升序排序，再按照积分降序排序，最后按照grade的id升序排序，得到结果如下:

[Problem Link](https://www.nowcoder.com/practice/b83f8b0e7e934d95a56c24f047260d91?tpId=82&&tqId=35494&rp=1&ru=/ta/sql&qru=/ta/sql/question-ranking)

## Solution

```sql
SELECT
	g1.id,
	l.name,
	g1.score
FROM
	garde g1
	JOIN `language` l ON g1.language_id = l.id
WHERE
	(
	SELECT
		count( DISTINCT g2.score )
	FROM
		garde g2
	WHERE
		g2.score >= g1.score
		AND g1.language_id = g2.language_id
	) <= 2
ORDER BY
	l.name,
	g1.score DESC,
	g1.id
```