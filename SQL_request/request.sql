SELECT TOP 50000 Title, Body, Tags, Id, Score, ViewCount, AnswerCount
FROM Posts
WHERE PostTypeId = 1
AND ViewCount > 100
AND AnswerCount > 5
AND LEN(Tags) - LEN(REPLACE(Tags, '<', '')) >= 3
ORDER BY LEN(Tags) DESC;


