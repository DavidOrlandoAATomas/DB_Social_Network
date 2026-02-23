MATCH (u:Usuario) -[a:AMIGO_DE] - (u1:Usuario)-[a1:AMIGO_DE] -(u3)
WHERE u <> u3 AND NOT (u) -[a:AMIGO_DE] - (u3)
WITH u, u3, COUNT(u1) as amigoEmcomum
RETURN u.nome as usuario, u3.nome as sugerido, amigoEmcomum;
