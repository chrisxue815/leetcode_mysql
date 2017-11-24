select
  A.id as id,
  ifnull(B.student, A.student) as student
from
  seat A
  left join seat B on A.id = B.id + if(A.id % 2 = 0, 1, -1)
order by A.id;
