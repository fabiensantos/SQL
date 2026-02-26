CREATE DATABASE publisher;

/*
Um livro tem 1 genero mas um genero pode ter 0 ou mais livros
Um autor pode ter varios livros e cada livro pode ter varios autores ( fazer tabela relacional )
Um livro pode ter varias reviews e cada leitor pode fazer varias reviews mas uma review so pode ter um livro e um leitor
O livro vai estar associado ao leitor através da review
*/

-- =====================================================
-- TABLE: genre
-- Armazena os géneros literários disponíveis no sistema.
-- Entidade forte e independente.
-- =====================================================
CREATE TABLE IF NOT EXISTS genre (
  id SERIAL PRIMARY KEY,              -- Identificador único do género (auto-incremento)
  name VARCHAR(255) NOT NULL UNIQUE   -- Nome do género. UNIQUE evita duplicações lógicas
);


-- =====================================================
-- TABLE: books
-- Representa os livros disponíveis na aplicação.
-- Depende da tabela genre (relação 1:N).
-- =====================================================
CREATE TABLE IF NOT EXISTS books (
  id SERIAL PRIMARY KEY,              -- Identificador único do livro
  title VARCHAR(255) NOT NULL,        -- Título do livro
  genre_id INTEGER NOT NULL,          -- FK obrigatória para genre
  publication_date DATE NOT NULL,     -- Data de publicação
  isbn VARCHAR(255) NOT NULL UNIQUE,  -- ISBN único por livro (garantia de integridade comercial)
  summary TEXT NOT NULL,              -- Resumo ou descrição do livro

  -- FK para genre:
  -- ON DELETE RESTRICT impede apagar um género que tenha livros associados
  -- ON UPDATE CASCADE propaga alteração de id (caso raro, mas seguro)
  FOREIGN KEY (genre_id) REFERENCES genre(id) 
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);


-- =====================================================
-- TABLE: authors
-- Armazena os autores.
-- Entidade independente.
-- =====================================================
CREATE TABLE IF NOT EXISTS authors (
  id SERIAL PRIMARY KEY,              -- Identificador único do autor
  name VARCHAR(255) NOT NULL,         -- Nome completo do autor
  biography TEXT NOT NULL,            -- Biografia resumida
  birth_date DATE NOT NULL            -- Data de nascimento
);


-- =====================================================
-- TABLE: books_authors
-- Tabela de junção (N:N) entre books e authors.
-- Implementa relacionamento muitos-para-muitos.
-- =====================================================
CREATE TABLE IF NOT EXISTS books_authors (
  id SERIAL PRIMARY KEY,              -- Identificador técnico da relação
  book_id INTEGER NOT NULL,           -- FK para books
  author_id INTEGER NOT NULL,         -- FK para authors

  -- Se um livro for apagado, remove automaticamente as associações
  -- Se um autor for apagado, remove automaticamente as associações
  -- Mantém integridade da tabela de junção
  FOREIGN KEY (book_id) REFERENCES books(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  
  FOREIGN KEY (author_id) REFERENCES authors(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);


-- =====================================================
-- TABLE: readers
-- Representa utilizadores que podem avaliar livros.
-- Contém um utilizador especial (id = 1) para anonimização.
-- =====================================================
CREATE TABLE IF NOT EXISTS readers (
  id SERIAL PRIMARY KEY,                        -- Identificador único do leitor
  name VARCHAR(255) NOT NULL,                   -- Nome do leitor
  email VARCHAR(255) NOT NULL UNIQUE,           -- Email único (evita duplicação de contas)
  birth_date DATE,                              -- Data de nascimento opcional
  gender CHAR(1) CHECK (gender IN ('M', 'F'))   -- Restrição de domínio para garantir valores válidos
);


-- =====================================================
-- TABLE: reviews
-- Armazena avaliações feitas por leitores a livros.
-- Depende de books e readers.
-- =====================================================
CREATE TABLE IF NOT EXISTS reviews (
  id SERIAL PRIMARY KEY,                                    -- Identificador único da review
  book_id INTEGER NOT NULL,                                 -- FK obrigatória para books
  reader_id INTEGER DEFAULT 1,                              -- FK para readers (default = utilizador anónimo)
  rating INTEGER NOT NULL CHECK (rating BETWEEN 1 AND 5),   -- Rating limitado entre 1 e 5 para garantir integridade de negócio
  comment TEXT NOT NULL,                                    -- Comentário textual da avaliação

  -- Se o livro for apagado, as reviews são automaticamente removidas
  FOREIGN KEY (book_id) REFERENCES books(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  
  -- Se o leitor for apagado, a review não é perdida:
  -- passa a pertencer ao utilizador anónimo (id = 1)
  FOREIGN KEY (reader_id) REFERENCES readers(id)
    ON DELETE SET DEFAULT
    ON UPDATE CASCADE
);
