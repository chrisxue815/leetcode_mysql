select
  Department.Name as Department,
  Employee.Name as Employee,
  Employee.Salary
from Employee
  join Department on Department.Id = Employee.DepartmentId
  join
  (
    select
      DepartmentId,
      max(Salary) as Salary
    from Employee
    group by DepartmentId
  ) HighestSalaries
    on HighestSalaries.DepartmentId = Employee.DepartmentId
    and HighestSalaries.Salary = Employee.Salary;
