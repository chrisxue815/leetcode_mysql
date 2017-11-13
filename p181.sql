select
  Employee.Name as Employee
from Employee
  join Employee as Manager on Manager.Id = Employee.ManagerId
where Employee.Salary > Manager.Salary;
