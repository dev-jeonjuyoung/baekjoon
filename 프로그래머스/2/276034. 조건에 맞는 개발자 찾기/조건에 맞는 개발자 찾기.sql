-- 코드를 작성해주세요
SELECT ID, EMAIL, FIRST_NAME, LAST_NAME
FROM DEVELOPERS
WHERE SKILL_CODE & (
    SELECT
        SUM(CODE)
    FROM
        SKILLCODES
    WHERE
        NAME IN ('Python', 'C#')
)
ORDER BY ID ASC