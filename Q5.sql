SELECT 
	dayname(created_at) AS day_of_week,
    COUNT(*) AS total_no_of_users_registered
FROM ig_clone.users
GROUP BY day_of_week
ORDER BY total_no_of_users_registered DESC;