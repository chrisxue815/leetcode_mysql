create function getNthHighestSalary(n int) returns int
begin
  select n - 1 into n;
  return (
    select ifnull(
      (
        select
          distinct Salary
        from Employee
        order by Salary desc
        limit 1 offset n
      ), null)
  );
end
