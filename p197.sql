select
  today.Id
from
  Weather as today
  join Weather as yesterday on yesterday.Date = today.Date - interval 1 day
where today.Temperature > yesterday.Temperature;
