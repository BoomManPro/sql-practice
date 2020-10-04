# Sql 69

请你写出一个sql语句查询每个日期登录新用户个数，并且查询结果按照日期升序排序，上面的例子查询结果如下:(输出0，可以用sqlite的ifnull函数尝试实现，select ifnull(null,1)的输出是1)
[Problem Link](https://www.nowcoder.com/practice/e524dc7450234395aa21c75303a42b0a?tpId=82&rp=1&ru=%2Fta%2Fsql&qru=%2Fta%2Fsql%2Fquestion-ranking)

## Solution

```sql
/**
* 过滤出新增用户的数据后然后group by


SELECT
	l1.date,
	count( DISTINCT user_id )
FROM
	login l1
WHERE
	l1.date = ( SELECT min( date ) FROM login WHERE user_id = l1.user_id )
GROUP BY
	l1.date

**/



SELECT
	l1.date,
	IFNULL( l2.count, 0 )
FROM
	login l1
	LEFT JOIN (
	SELECT
		t1.date,
		count( DISTINCT t1.user_id ) count
	FROM
		login t1
	WHERE
		t1.date = ( SELECT min( date ) FROM login t2 WHERE t1.user_id = t2.user_id )
	GROUP BY
		t1.date
	) l2 ON l1.date = l2.date
GROUP BY
	l1.date,
	l2.count
ORDER BY
	l1.date
```