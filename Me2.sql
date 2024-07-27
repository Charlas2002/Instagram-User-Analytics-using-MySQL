SELECT 
    u.id AS user_id, 
    u.username, 
    COUNT(l.user_id) AS total_likes_per_user
FROM ig_clone.users u
INNER JOIN ig_clone.likes l 
	ON u.id = l.user_id
GROUP BY u.id, u.username
HAVING  COUNT(l.user_id) = (SELECT COUNT(*) FROM ig_clone.photos)
ORDER BY u.id;
