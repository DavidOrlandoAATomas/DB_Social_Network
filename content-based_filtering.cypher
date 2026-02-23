MATCH (u:Usuario) -[a:AMIGO_DE] - (u1:Usuario)-[a1:AMIGO_DE] -(u3)
WHERE u <> u3 AND NOT (u) -[a:AMIGO_DE] - (u3)
WITH u, u3, COUNT(u1) as amigoEmcomum
RETURN u.nome as usuario, u3.nome as sugerido, amigoEmcomum;

MATCH (u:Usuario) -[curtiu:CURTIU] -> (po:Post)-[pe:PUBLICADO_EM] -> (pa:Pagina) <- [pe1:PUBLICADO_EM] - (p1:Post)
WHERE po <> p1 AND NOT (u) -[curtiu:CURTIU] -> (p1)
WITH u, p1, COUNT(po) AS afinidade
RETURN u.nome AS usuario,
       p1.conteudo AS sugerido,
       afinidade
ORDER BY afinidade DESC;

