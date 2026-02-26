-- Listar todos os livros e mostrar o género correspondente
SELECT b.id AS book_id,
       b.title AS book_title,
       g.name AS genre
FROM books b
JOIN genre g ON b.genre_id = g.id
ORDER BY b.id;

-- Listar todos os autores com a sua data de nascimento
SELECT id, name, birth_date
FROM authors
ORDER BY name;

-- Mostrar cada livro com todos os autores associados
SELECT b.title AS book_title,
       STRING_AGG(a.name, ', ') AS authors
FROM books b
JOIN books_authors ba ON b.id = ba.book_id
JOIN authors a ON ba.author_id = a.id
GROUP BY b.title
ORDER BY b.title;

-- Listar todos os leitores, incluindo anónimo
SELECT id, name, email, gender
FROM readers
ORDER BY id;

-- Mostrar todas as reviews do livro '1984'
SELECT r.id AS review_id,
       rd.name AS reader_name,
       r.rating,
       r.comment
FROM reviews r
JOIN readers rd ON r.reader_id = rd.id
JOIN books b ON r.book_id = b.id
WHERE b.title = '1984'
ORDER BY r.id;


-- Calcular a média de rating de cada livro
SELECT b.title AS book_title,
       AVG(r.rating) AS average_rating,
       COUNT(r.id) AS total_reviews
FROM books b
LEFT JOIN reviews r ON b.id = r.book_id
GROUP BY b.title
ORDER BY average_rating DESC;


-- Listar livros que têm múltiplos autores
SELECT b.title AS book_title,
       COUNT(ba.author_id) AS num_authors
FROM books b
JOIN books_authors ba ON b.id = ba.book_id
GROUP BY b.title
HAVING COUNT(ba.author_id) > 1
ORDER BY num_authors DESC;


-- Listar autores com mais de um livro associado
SELECT a.name AS author_name,
       COUNT(ba.book_id) AS num_books
FROM authors a
JOIN books_authors ba ON a.id = ba.author_id
GROUP BY a.name
HAVING COUNT(ba.book_id) > 1
ORDER BY num_books DESC;

-- Mostrar cada livro e quantas reviews tem
SELECT b.title AS book_title,
       COUNT(r.id) AS total_reviews
FROM books b
LEFT JOIN reviews r ON b.id = r.book_id
GROUP BY b.title
ORDER BY total_reviews DESC;


-- Mostrar todas as reviews feitas por leitores registados (não anónimo)
SELECT r.id AS review_id,
       rd.name AS reader_name,
       b.title AS book_title,
       r.rating,
       r.comment
FROM reviews r
JOIN readers rd ON r.reader_id = rd.id
JOIN books b ON r.book_id = b.id
WHERE r.reader_id <> 1
ORDER BY r.id;


-- Mostrar todas as reviews feitas por leitores registados (não anónimo)
SELECT r.id AS review_id,
       rd.name AS reader_name,
       b.title AS book_title,
       r.rating,
       r.comment
FROM reviews r
JOIN readers rd ON r.reader_id = rd.id
JOIN books b ON r.book_id = b.id
WHERE r.reader_id <> 1
ORDER BY r.id;


-- Listar livros que ainda não têm nenhuma review
SELECT b.title AS book_title
FROM books b
LEFT JOIN reviews r ON b.id = r.book_id
WHERE r.id IS NULL
ORDER BY b.title;


-- Listar leitores por número de reviews feitas
SELECT rd.name AS reader_name,
       COUNT(r.id) AS total_reviews
FROM readers rd
JOIN reviews r ON rd.id = r.reader_id
GROUP BY rd.name
ORDER BY total_reviews DESC;
