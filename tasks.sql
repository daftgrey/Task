SELECT DisplayName FROM comments c 
JOIN users u ON (c.UserID = u.id) JOIN votes v ON (u.id = v.UserID) 
WHERE c.CreationDatee IS NULL AND v.CreationDate IS NULL;

SELECT EXTRACT(YEAR FROM p.CreatingDate), COUNT (p.ID), COUNT (c.ID) FROM posts p 
JOIN comments c ON (p.id = c.PostID) 
GROUP BY EXTRACT(YEAR FROM p.CreatingDate);

SELECT DisplayName, COUNT (*) FROM USERS u 
JOIN commetns c ON (u.ID = c.ID) 
GROUP BY DisplayName 
ORDER BY 2 desc FETCH FIRST 3 ROWS ONLY;

SELECT DisplayName, COUNT (*), ((COUNT(*) / (select count(*) from comments) * 100)  || '%') procentage_total FROM 
users u JOIN commetns ON (u.ID = c.ID) 
GROUP BY DisplayName 
ORDER BY 2 desc 
FETCH FIRST 3 ROWS ONLY;