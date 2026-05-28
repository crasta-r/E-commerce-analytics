SELECT
  event_type,
  COUNT(DISTINCT user_id) AS unique_users
FROM `bigquery-public-data.thelook_ecommerce.events`
GROUP BY event_type
ORDER BY unique_users DESC
