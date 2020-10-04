# Sql 70

请你写出一个sql语句查询每个日期新用户的次日留存率，结果保留小数点后面3位数(3位之后的四舍五入)，并且查询结果按照日期升序排序，上面的例子查询结果如下:

[Problem Link](https://www.nowcoder.com/practice/ea0c56cd700344b590182aad03cc61b8?tpId=82&rp=1&ru=%2Fta%2Fsql&qru=%2Fta%2Fsql%2Fquestion-ranking)

## Solution

```sql
/**
求每个日期的新增用户次日留存率

1. 求出每个日期的新增用户数
2. 求出这些用户下一天还登录的个数
**/ -- 1. 所有日期  SELECT date from login GROUP BY date ORDER BY date
-- 2. 新增用户和次日留存用户
SELECT
	l1.date,
	IFNULL( l3.next / l2.curr, 0 )  p
FROM
	login l1
	LEFT JOIN (
	SELECT
		t1.date,
		count( DISTINCT t1.user_id ) curr
	FROM
		login t1
	WHERE
		t1.date = ( SELECT min( t2.date ) FROM login t2 WHERE t1.user_id = t2.user_id )
	GROUP BY
		t1.date
	) l2 ON l1.date = l2.date
	LEFT JOIN (
	SELECT
		DATE_SUB( t1.date, INTERVAL 1 DAY ) date,
		count( DISTINCT t1.user_id ) next
	FROM
		login t1
	WHERE
		t1.date = ( SELECT date_add( min( t2.date ), INTERVAL 1 DAY ) FROM login t2 WHERE t1.user_id = t2.user_id )
	GROUP BY
		t1.date
	) l3 ON l1.date = l3.date
GROUP BY
	l1.date,
	l2.curr,
	l3.next
```