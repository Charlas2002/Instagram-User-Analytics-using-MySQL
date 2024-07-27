SELECT tag_name,
       COUNT(*) AS Total_no_of_tags_used_by_individually
FROM ig_clone.tags t
JOIN photo_tags pt
	ON t.id = pt.tag_id
GROUP BY t.tag_name
ORDER BY Total_no_of_tags_used_by_individually DESC
LIMIT 5;