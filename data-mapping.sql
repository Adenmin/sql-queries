-- check data
WITH expected
AS (),
actual
AS ()
SELECT count(*)
FROM (
  (
    SELECT 'actual' AS row_from,
      *
    FROM actual

    EXCEPT

    SELECT 'actual',
      *
    FROM expected
    )

  UNION

  (
    SELECT 'expected' AS row_from,
      *
    FROM expected

    EXCEPT

    SELECT 'expected',
      *
    FROM actual
    )
  )
