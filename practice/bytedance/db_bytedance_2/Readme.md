# Sql 74

学生表、课程表、成绩表。列出平均成绩及格但语文成绩不及格的 学生id,平均成绩，语文成绩。

## Solution


```sql

SELECT

s1.student_id,u2.name,s2.score ,AVG(s1.score) avg

from score s1

left join

(
select s3.student_id,s3.score
from score s3 left join course c3 on s3.course_id=c3.id
where c3.name="语文" and s3.score <60

) s2 on s1.student_id=s2.student_id

left join student u2 on u2.id=s1.student_id
where s2.score is not null

GROUP BY s1.student_id,s2.score,u2.name HAVING AVG(s1.score)>=60


```