# Sql 68

请你写出一个sql语句查询新登录用户次日成功的留存率，即第1天登陆之后，第2天再次登陆的概率,保存小数点后面3位(3位之后的四舍五入)

[Problem Link](https://www.nowcoder.com/practice/16d41af206cd4066a06a3a0aa585ad3d?tpId=82&rp=1&ru=%2Fta%2Fsql&qru=%2Fta%2Fsql%2Fquestion-ranking)

## Solution

```sql
SELECT
	count( * ) / ( SELECT count( DISTINCT user_id ) FROM login )
FROM
	login
WHERE
	( user_id, date ) IN ( SELECT user_id, date_add( min( date ), INTERVAL 1 DAY ) FROM login GROUP BY user_id )
```