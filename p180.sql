select
  distinct A.Num as ConsecutiveNums
from Logs A
  join Logs B on B.Id = A.Id + 1 and B.Num = A.Num
  join Logs C on C.Id = A.Id + 2 and C.Num = A.Num;
