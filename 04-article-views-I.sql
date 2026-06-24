SELECT DISTINCT Views.author_id as id
FROM Views
WHERE Views.viewer_id = Views.author_id
ORDER BY Views.author_id ASC