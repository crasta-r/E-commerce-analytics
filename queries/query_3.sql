SELECT
    CASE
        WHEN u.age < 25 THEN 'Under 25'
        WHEN u.age BETWEEN 25 AND 34 THEN '25-34'
        WHEN u.age BETWEEN 35 AND 44 THEN '35-44'
        WHEN u.age BETWEEN 45 AND 54 THEN '45-54'
        ELSE '55+'
    END AS age_group,
    COUNT(DISTINCT u.id) AS unique_users
FROM `bigquery-public-data.thelook_ecommerce.users` u
JOIN `bigquery-public-data.thelook_ecommerce.orders` o
ON u.id = o.user_id
GROUP BY age_group
ORDER BY unique_users DESC;
