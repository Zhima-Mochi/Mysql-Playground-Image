USE playground;

-- 2021-12-01
TRUNCATE TABLE find_begin_end;

INSERT INTO
    find_begin_end(seq_num) WITH recursive t1 AS(
        SELECT
            1 seq_num
        UNION
        ALL
        SELECT
            seq_num + 1
        FROM
            t1
        WHERE
            seq_num < 10
    ),
    t2 AS(
        SELECT
            14 seq_num
        UNION
        ALL
        SELECT
            seq_num + 1
        FROM
            t2
        WHERE
            seq_num < 29
    ),
    t3 AS(
        SELECT
            49 seq_num
        UNION
        ALL
        SELECT
            seq_num + 1
        FROM
            t3
        WHERE
            seq_num < 304
    )
SELECT
    *
FROM
    (
        SELECT
            *
        FROM
            t1
        UNION
        ALL
        SELECT
            *
        FROM
            t2
        UNION
        ALL
        SELECT
            *
        FROM
            t3
    ) t;