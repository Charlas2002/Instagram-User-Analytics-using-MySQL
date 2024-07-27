SELECT COUNT(*) AS total_post_count
FROM ig_clone.photos
GROUP BY photos.id;

SELECT COUNT(*) AS total_users
FROM ig_clone.users
GROUP BY users.id;

SELECT 
(SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users) AS average_photos_per_user;

SELECT user_id, 
	   COUNT(*) AS total_posts
FROM ig_clone.photos
GROUP BY user_id;
