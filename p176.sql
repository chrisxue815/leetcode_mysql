(
  select
    distinct Salary as SecondHighestSalary
  from Employee
  order by Salary desc
  limit 1, 1
)
union
(
  select null
)
limit 1;
