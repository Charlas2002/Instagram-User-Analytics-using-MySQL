SELECT u.username,
	   u.id AS user_id
FROM ig_clone.users u
LEFT JOIN photos p
	ON u.id = p.user_id
WHERE p.id IS NULL;