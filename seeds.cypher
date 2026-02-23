CREATE (:Assunto {id: "A1", nome: "Tecnologia"});
CREATE(:Assunto{id:"A2", nome: "Ciência"});
CREATE(:Assunto{id:"A3", nome: "Política"});
CREATE(:Assunto{id:"A4", nome: "Arte"});

MATCH (a:Assunto {id: "A1"})
CREATE (c:Comunidade {id: "C1", nome: "Neo4j Brasil"})
CREATE (c)-[:SOBRE]->(a);

MERGE(:Comunidade{id: "C2", nome: "Pequeno Cientista"}) - [:SOBRE] -> (:Assunto{id: "A2"});

MATCH(a:Assunto{id: "A4"})
CREATE(c:Comunidade{id: "C3", mome: "Da Vince XXI"})
CREATE(c) -[:SOBRE] -> (a);

CREATE(:Comunidade{id: "C2", nome: "Pequeno Cientista"}) - [:SOBRE] -> (:Assunto{id: "A2"});

MATCH(a:Assunto{id: "A4"})
CREATE(c:Comunidade{id: "C3", nome: "Da Vinci XXI"})
CREATE(c) -[:SOBRE] -> (a);

MATCH(a:Assunto{id:"A2"})
CREATE(:Comunidade{id: "C2", nome: "Pequeno Cientista"}) - [:SOBRE] -> (a);

MATCH(a:Assunto{id: "A4"})
CREATE(c:Comunidade{id: "C3", mome: "Da Vince XXI"})
CREATE(c) -[:SOBRE] -> (a);

MATCH (a:Assunto {id: "A1"})
CREATE (p:Pagina {id: "P1", nome: "Graph Insights"})
CREATE (p)-[:SOBRE]->(a);

MATCH(a:Assunto{id:"A2"})
CREATE(p:Pagina{id:"P2", nome: "Crente da Ciência"})
CREATE(p) - [:SOBRE] -> (a);

MATCH(a:Assunto{id:"A3"})
CREATE(p:Pagina{id:"P3", nome: "Diário de um político"})
CREATE(p) - [:SOBRE] -> (a);

MATCH(a:Assunto{id:"A4"})
CREATE(p:Pagina{id:"P4", nome: "O poder da Arte"})
CREATE(p) - [:SOBRE] -> (a);

CREATE 
(:Usuario {id: "U1", nome: "Ana", email: "ana@gmail.com", idade: 25}),
(:Usuario {id: "U2", nome: "Bruno", email: "bruno@email.com", idade: 30}),
(:Usuario {id: "U3", nome: "Bruna", email: "bruna@email.com", idade: 37}),
(:Usuario {id: "U4", nome: "Breno", email: "br3no@gmail.com", idade: 20}),
(:Usuario {id: "U5", nome: "Anais", email: "ana@email.com", idade: 29}),
(:Usuario {id: "U6", nome: "Hugo", email: "bruno@email.com", idade: 45});

MATCH (u1:Usuario {id: "U1"}),
      (u2:Usuario {id: "U2"})
MERGE (u1)-[:AMIGO_DE {since: date()}]-(u2);

MATCH (u1:Usuario {id: "U3"}),
      (u2:Usuario {id: "U4"})
MERGE (u1)-[:AMIGO_DE {since: date()}]-(u2);

MATCH (u1:Usuario {id: "U5"}),
      (u2:Usuario {id: "U6"})
MERGE (u1)-[:AMIGO_DE {since: date()}]-(u2);

MATCH (u1:Usuario {id: "U3"}),
      (u2:Usuario {id: "U6"})
MERGE (u1)-[:AMIGO_DE {since: date()}]-(u2);

MATCH(u1:Usuario{id:"U2"})
MATCH(u2:Usuario{id:"U3"})
MERGE(u1) -[:AMIGO_DE] - (u2);

MATCH (u:Usuario {id: "U1"}),
      (c:Comunidade {id: "C1"})
CREATE (p:Post {
    id: "POST1",
    conteudo: "Aprendendo grafos!",
    tipo: "TEXTO",
    createdAt: datetime()
})
CREATE (u)-[:POSTOU]->(p)
CREATE (p)-[:PUBLICADO_EM]->(c);

MATCH (u:Usuario {id: "U2"}),
      (c:Comunidade {id: "C1"})
CREATE (p:Post {
    id: "POST2",
    conteudo: "Base de dados em Grafos!",
    tipo: "TEXTO",
    createdAt: datetime()
})
CREATE (u)-[:POSTOU]->(p)
CREATE (p)-[:PUBLICADO_EM]->(c);

MATCH (u:Usuario {id: "U3"}),
      (c:Comunidade {id: "C2"})
CREATE (p:Post {
    id: "POST3",
    conteudo: "Teoria das Cordas!",
    tipo: "TEXTO",
    createdAt: datetime()
})
CREATE (u)-[:POSTOU]->(p)
CREATE (p)-[:PUBLICADO_EM]->(c);

MATCH (u:Usuario {id: "U4"}),
      (c:Comunidade {id: "C2"})
CREATE (p:Post {
    id: "POST4",
    conteudo: "O poder do Grafeno!",
    tipo: "TEXTO",
    createdAt: datetime()
})
CREATE (u)-[:POSTOU]->(p)
CREATE (p)-[:PUBLICADO_EM]->(c);

MATCH (u:Usuario {id: "U5"}),
      (c:Comunidade {id: "C3"})
CREATE (p:Post {
    id: "POST5",
    conteudo: "Conflito no Irão!",
    tipo: "TEXTO",
    createdAt: datetime()
})
CREATE (u)-[:POSTOU]->(p)
CREATE (p)-[:PUBLICADO_EM]->(c);

MATCH (u:Usuario {id: "U1"}),
      (pa:Pagina {id: "P1"})
CREATE (p:Post {
    id: "POST11",
    conteudo: "Consultas avançadas no neo4j Aura",
    tipo: "TEXTO",
    createdAt: datetime()
})
CREATE (u)-[:POSTOU]->(p)
CREATE (p)-[:PUBLICADO_EM]->(pa);

MATCH (u:Usuario {id: "U2"}),
      (pa:Pagina {id: "P2"})
CREATE (p:Post {
    id: "POST12",
    conteudo: "A ciência comprova que Deus sempre existiu!",
    tipo: "TEXTO",
    createdAt: datetime()
})
CREATE (u)-[:POSTOU]->(p)
CREATE (p)-[:PUBLICADO_EM]->(pa);

MATCH (u:Usuario {id: "U2"}),
      (pa:Pagina {id: "P2"})
CREATE (p:Post {
    id: "POST13",
    conteudo: "Princípio de Borrel: a vida na Terra é matematicamente impossível de existir!",
    tipo: "TEXTO",
    createdAt: datetime()
})
CREATE (u)-[:POSTOU]->(p)
CREATE (p)-[:PUBLICADO_EM]->(pa);

MATCH (u:Usuario {id: "U3"}),
      (pa:Pagina {id: "P3"})
CREATE (p:Post {
    id: "POST14",
    conteudo: "Como o livro A arte da Guerra mudou minha carreira!",
    tipo: "TEXTO",
    createdAt: datetime()
})
CREATE (u)-[:POSTOU]->(p)
CREATE (p)-[:PUBLICADO_EM]->(pa);

MATCH (u:Usuario {id: "U2"}),
      (p:Post {id: "POST1"})
CREATE (c:Comentario {
    id: "COM1",
    conteudo: "Excelente!",
    createdAt: datetime()
})
CREATE (u)-[:POSTOU]->(c)
CREATE (c)-[:SOBRE]->(p);

MATCH (u:Usuario {id: "U2"}),
      (p:Post {id: "POST3"})
CREATE (c:Comentario {
    id: "COM2",
    conteudo: "Excelente!",
    createdAt: datetime()
})
CREATE (u)-[:POSTOU]->(c)
CREATE (c)-[:SOBRE]->(p);

MATCH (u:Usuario {id: "U3"}),
      (p:Post {id: "POST4"})
CREATE (c:Comentario {
    id: "COM4",
    conteudo: "Excelente!",
    createdAt: datetime()
})
CREATE (u)-[:POSTOU]->(c)
CREATE (c)-[:SOBRE]->(p);

MATCH (u:Usuario {id: "U2"}),
      (p:Post {id: "POST1"})
CREATE (u)-[:CURTIU {timestamp: datetime()}]->(p);

MATCH (u:Usuario {id: "U2"})
MATCH (p:Post {id: "POST4"})
CREATE (u)-[:CURTIU {timestamp: datetime()}]->(p);

MATCH (u:Usuario {id: "U5"})
MATCH (p:Post {id: "POST4"})
CREATE (u)-[:CURTIU {timestamp: datetime()}]->(p);

