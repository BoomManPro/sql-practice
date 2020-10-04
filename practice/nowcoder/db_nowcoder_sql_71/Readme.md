# Sql 71

牛客每天有很多人登录，请你统计一下牛客每个用户查询刷题信息，包括: 用户的名字，以及用户用的设备的名字，以及截止到某天，累计总共通过了多少题。

 不存在没有登录却刷题的情况，但是存在登录了没刷题的情况，不会存在刷题表里面，有提交代码没有通过的情况，但是会记录在刷题表里，只不过通过数目是0。

[Problem Link](https://www.nowcoder.com/practice/572a027e52804c058e1f8b0c5e8a65b4?tpId=82&rp=1&ru=%2Fta%2Fsql&qru=%2Fta%2Fsql%2Fquestion-ranking)

## Solution

```sql
/**
因为，有登录却没有刷题的哪一天的数据不需要输出
所以以passing_number为主表
**/
SELECT
	u1.NAME u_n,
	c1.NAME c_n,
	p1.date date,
	( SELECT sum( number ) FROM passing_number p2 WHERE p2.user_id = p1.user_id AND p2.date <= p1.date ) ps_number
FROM
	passing_number p1
	INNER JOIN `user` u1 ON p1.user_id = u1.id
	LEFT JOIN `login` l1 ON p1.user_id = l1.user_id
	AND p1.date = l1.date
	INNER JOIN `client` c1 ON c1.id = l1.client_id
ORDER BY
	p1.date,
	u_n
```