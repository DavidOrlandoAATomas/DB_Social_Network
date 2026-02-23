# Graph-Based Social Recommendation System

Sistema de recomendação baseado em grafos utilizando Neo4j.

Este projeto modela uma rede social contendo usuários, posts, páginas, comunidades e assuntos, aplicando algoritmos de recomendação baseados em estrutura de grafo.

---

## 📌 Objetivos

- Modelar rede social utilizando Neo4j
- Implementar recomendação de amizade (Friend-of-a-Friend)
- Implementar recomendação de posts baseada em:
  - Afinidade por comunidade
  - Afinidade por página
  - Popularidade

## 🧠 Modelo de Dados

### Nós

- `Usuario`
- `Post`
- `Comentario`
- `Pagina`
- `Comunidade`
- `Assunto`

### Relacionamentos

- `POSTOU`
- `CURTIU`
- `AMIGO_DE`
- `PUBLICADO_EM`
- `SOBRE`
- `SEGUE`
- `ADERIU`

---

## ⚙️ Configuração

### 1. Criar instância no Neo4j Aura

- Acesse https://console.neo4j.io
- Crie uma instância AuraDB
- Copie URI, usuário e senha

### 2. Aplicar Constraints

Execute:

```
database/constraints.cypher
```

### 3. Inserir Dados Iniciais

Execute:

```
database/seed_data.cypher
```

---

## 🚀 Algoritmos Implementados

### 1. Recomendação de Amizade

Baseado em amigos em comum (Triadic Closure).

Arquivo:
```
algorithms/friend_recommendation.cypher
```

---

### 2. Recomendação de Posts por Comunidade

Sugere posts não curtidos dentro de comunidades com maior afinidade.

Arquivo:
```
algorithms/post_recommendation.cypher
```

---

## 👤 Autor

Projeto desenvolvido para estudo e experimentação em análise de grafos e sistemas de recomendação.
