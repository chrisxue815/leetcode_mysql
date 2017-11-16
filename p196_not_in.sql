delete from Person
where Id not in
(
  select MinId from
  (
    select min(Id) as MinId
    from Person
    group by Email
  ) as MinIds
);
