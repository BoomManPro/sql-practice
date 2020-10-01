# Sql 74

一个学生表、课程和成绩表，列出至少两门以上不及格学生的名字和平均成绩，怎么写？

## Solution

```sql
-- 学生表 简写 st1 === stn
-- 成绩表 简写 sc1 === scn
-- 课程表 简写 co1 === con


-- 一个学生表、课程和成绩表，列出至少两门以上不及格学生的名字和平均成绩，怎么写？



select st1.name,AVG(sc3.score)

from score sc3

left join (

select sc1.student_id,count(1) count

from

score sc1

where sc1.score <60


group by sc1.student_id) sc4  on  sc3.student_id=sc4.student_id

left join student st1 on sc3.student_id=st1.id

where sc4.student_id is not null  and sc4.count>=2

group by sc3.student_id,st1.name
```