-- Géneros literários
INSERT INTO genre (id, name) VALUES
(1, 'Fiction'),           -- Ficção geral
(2, 'Fantasy'),           -- Fantasia
(3, 'Science Fiction'),   -- Ficção científica
(4, 'Philosophy'),        -- Filosofia
(5, 'History'),           -- História
(6, 'Romance'),           -- Romance
(7, 'Mystery'),           -- Mistério
(8, 'Horror'),            -- Terror
(9, 'Biography'),         -- Biografia
(10, 'Self-Help');        -- Auto-ajuda


-- Autores (alguns com múltiplos livros)
INSERT INTO authors (id, name, biography, birth_date) VALUES
(1, 'George Orwell', 'Autor britânico, conhecido por 1984 e A Revolução dos Bichos.', '1903-06-25'),
(2, 'J.R.R. Tolkien', 'Autor britânico, criador de O Senhor dos Anéis.', '1892-01-03'),
(3, 'Isaac Asimov', 'Escritor e professor, famoso em ficção científica.', '1920-01-02'),
(4, 'Plato', 'Filósofo grego clássico, aluno de Sócrates.', '0428-01-01'),
(5, 'Yuval Noah Harari', 'Historiador e autor de Sapiens.', '1976-02-24'),
(6, 'Agatha Christie', 'Escritora britânica, rainha do mistério.', '1890-09-15'),
(7, 'Stephen King', 'Autor americano de terror e suspense.', '1947-09-21'),
(8, 'Jane Austen', 'Romancista britânica, crítica social.', '1775-12-16'),
(9, 'Malcolm Gladwell', 'Jornalista e autor de livros de auto-ajuda e psicologia.', '1963-09-03'),
(10, 'Arthur C. Clarke', 'Escritor britânico de ficção científica.', '1917-12-16');


-- Livros (alguns com múltiplos autores)
INSERT INTO books (id, title, genre_id, publication_date, isbn, summary) VALUES
(1, '1984', 1, '1949-06-08', '9780451524935', 'Romance distópico sobre vigilância e autoritarismo.'),
(2, 'Animal Farm', 1, '1945-08-17', '9780451526342', 'Fábula política sobre poder e corrupção.'),
(3, 'The Hobbit', 2, '1937-09-21', '9780547928227', 'Bilbo Baggins embarca numa aventura épica.'),
(4, 'The Lord of the Rings', 2, '1954-07-29', '9780618640157', 'A épica jornada de Frodo e a Sociedade do Anel.'),
(5, 'Foundation', 3, '1951-06-01', '9780553293357', 'Saga sobre a queda do Império Galáctico.'),
(6, 'The Republic', 4, '0380-01-01', '9780140455113', 'Diálogo filosófico sobre justiça e ordem.'),
(7, 'Sapiens', 5, '2011-01-01', '9780062316097', 'Breve história da humanidade.'),
(8, 'Murder on the Orient Express', 7, '1934-01-01', '9780062693662', 'Detetive Hercule Poirot resolve um crime num comboio.'),
(9, 'Pride and Prejudice', 6, '1813-01-28', '9780141439518', 'Romance clássico sobre sociedade e casamento.'),
(10, 'It', 8, '1986-09-15', '9781501142970', 'História de terror sobre o monstro Pennywise.'),
(11, 'Rendezvous with Rama', 3, '1973-06-01', '9780345347954', 'Exploração de uma nave alienígena.'),
(12, 'Good Omens', 2, '1990-05-01', '9780060853983', 'Comédia fantástica sobre o apocalipse.'); 

-- Associação livros-autores (N:N)
INSERT INTO books_authors (book_id, author_id) VALUES
(1, 1),  -- 1984 -> George Orwell
(2, 1),  -- Animal Farm -> George Orwell
(3, 2),  -- The Hobbit -> Tolkien
(4, 2),  -- Lord of the Rings -> Tolkien
(5, 3),  -- Foundation -> Asimov
(11, 10),-- Rendezvous with Rama -> Arthur C. Clarke
(6, 4),  -- The Republic -> Plato
(7, 5),  -- Sapiens -> Harari
(8, 6),  -- Murder on Orient Express -> Christie
(9, 8),  -- Pride and Prejudice -> Jane Austen
(10, 7), -- It -> Stephen King
(12, 2), -- Good Omens -> Tolkien
(12, 9); -- Good Omens -> Autor adicional (ficcional) -> Gladwell

-- Leitores (incluindo id=1 Anónimo)
INSERT INTO readers (id, name, email, birth_date, gender) VALUES
(1, 'Anonymous User', 'anonymous@system.local', NULL, NULL), -- utilizador genérico
(2, 'Fabien Silva', 'fabien@email.com', '1995-04-12', 'M'),
(3, 'Maria Costa', 'maria@email.com', '1998-08-20', 'F'),
(4, 'João Pereira', 'joao@email.com', '1990-11-03', 'M'),
(5, 'Ana Martins', 'ana@email.com', '1985-02-14', 'F'),
(6, 'Pedro Santos', 'pedro@email.com', '1987-07-09', 'M'),
(7, 'Clara Oliveira', 'clara@email.com', '1992-03-15', 'F'),
(8, 'Ricardo Lopes', 'ricardo@email.com', '1994-12-22', 'M'),
(9, 'Sofia Almeida', 'sofia@email.com', '1991-09-30', 'F'),
(10, 'Miguel Fernandes', 'miguel@email.com', '1988-05-05', 'M');


-- Reviews de livros por leitores
INSERT INTO reviews (book_id, reader_id, rating, comment) VALUES
(1, 2, 5, 'Obra-prima distópica.'),
(2, 3, 4, 'Leitura rápida e envolvente.'),
(3, 4, 5, 'Fantasia incrível e detalhada.'),
(4, 5, 5, 'Épico e cativante.'),
(5, 6, 4, 'Sci-fi brilhante e bem estruturado.'),
(6, 7, 3, 'Interessante, mas complexo.'),
(7, 8, 5, 'Excelente resumo da história humana.'),
(8, 9, 4, 'Mistério clássico bem resolvido.'),
(9, 10, 5, 'Romance intemporal e encantador.'),
(10, 2, 4, 'História de terror envolvente.'),
(11, 3, 5, 'Exploração espacial fascinante.'),
(12, 4, 5, 'Comédia fantástica divertida.'),
(12, 5, 4, 'Humor e criatividade excelentes.');
