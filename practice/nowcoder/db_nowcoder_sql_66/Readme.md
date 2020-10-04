# Sql 66

请你写出一个sql语句查询每个用户最近一天登录的日子，并且按照user_id升序排序

[Problem Link](https://www.nowcoder.com/practice/ca274ebe6eac40ab9c33ced3f2223bb2?tpId=82&&tqId=35084&rp=1&ru=/ta/sql&qru=/ta/sql/question-ranking)

## Solution

```sql
SELECT MAX(date)
FROM login
GROUP BY user_id
ORDER BY user_id
```