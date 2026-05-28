SELECT
  gender,
  AVG(age) AS avg_age,
  COUNT(*) AS users
FROM `bigquery-public-data.thelook_ecommerce.users`
GROUP BY gender
