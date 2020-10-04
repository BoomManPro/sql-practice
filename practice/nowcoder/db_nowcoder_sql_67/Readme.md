# Sql 67

请你写出一个sql语句查询每个用户最近一天登录的日子，用户的名字，以及用户用的设备的名字，并且查询结果按照user的name升序排序

[Problem Link](https://www.nowcoder.com/practice/7cc3c814329546e89e71bb45c805c9ad?tpId=82&&tqId=35085&rp=1&ru=/ta/sql&qru=/ta/sql/question-ranking)

## Solution

```sql
/**
* sql语句查询每个用户最近一天登录的日子，用户的名字，以及用户用的设备的名字，并且查询结果按照user的name升序排序
*
*/

SELECT
	u.name,
	c.name,
	l1.date
FROM
	login l1
	INNER JOIN user u ON l1.user_id = u.id
	INNER JOIN client c ON c.id = l1.client_id
	INNER JOIN ( SELECT user_id, MAX( date ) date FROM login GROUP BY user_id ) l2 ON l1.user_id = l2.user_id
	AND l1.date = l2.date
	ORDER BY u.name
```