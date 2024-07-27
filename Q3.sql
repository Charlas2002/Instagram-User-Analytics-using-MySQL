SELECT u.id AS user_id,
	   u.username,
	   p.id AS photo_id,
       p.image_url,
       COUNT(*) AS Total
FROM ig_clone.users u 
INNER JOIN photos p
	ON p.user_id = u.id
INNER JOIN likes l
	ON l.photo_id = p.id
GROUP BY p.id
ORDER BY Total DESC
LIMIT 1;