-- check counts
WITH expected
AS (),
actual
AS ()
SELECT 'actual' AS row_from,
  count(*)
FROM actual

UNION ALL

SELECT 'expected',
  count(*)
FROM expected
