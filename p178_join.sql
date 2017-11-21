select
  Scores.Score,
  Ranks.Rank
from Scores
  join
  (
    select
      Score,
      cast(@rownum := @rownum + 1 as unsigned) as Rank
    from
      (
        select
          distinct Score
        from Scores
        order by Score desc
      ) DistinctScores,
      (select @rownum := 0) RowNums
  ) Ranks on Ranks.Score = Scores.Score
order by Scores.Score desc;
