/* Exercice 1 */

/* Partie 1 */
SELECT * 
FROM `film` 
WHERE date_sortie > 1960;

/* Partie 2 */
SELECT titre 
FROM `film` 
WHERE date_sortie < 1960;


/* Exercice 2 */

UPDATE film 
SET description = "Pilule bleue ou pilule rouge ?" 
WHERE film.id = 35;


/* Exercice 3 */

INSERT INTO film (titre, slug, image, prix, description, date_sortie) 
VALUES ("Silent Hill", "silent-hill", "1786efg87289723094fef29083k.jpg", 15, "Pour vaincre les crises de somnambulisme aiguës de sa fille, au cours desquelles celle-ci se retrouve en danger, Rose est prête à tout.", "2006-04-26");

INSERT INTO film_categs (id_film, id_categorie) 
VALUES (45, 49), (45, 51), (45, 52);

/* Exercice 4 */

SELECT film.*, user.*, commentaire.commentaire 
FROM film INNER JOIN commentaire ON film.id = commentaire.id_film INNER JOIN user ON commentaire.id_user = user.id 
WHERE commentaire.id_film = 43;

/* Exercice 5 */

DELETE FROM film 
WHERE slug LIKE "t%";


/* Exercice 6 */

SELECT DISTINCT user.* 
FROM user INNER JOIN commentaire ON user.id = commentaire.id_user;


/* Exercice 7 */

SELECT * 
FROM film INNER JOIN categorie INNER JOIN films_categs ON film.id = films_categs.id_film AND categorie.id = films_categs.id_categorie 
WHERE categorie.id = 51;


/* Exercice 8 */

SELECT AVG(note) 
FROM commentaire;


/* Exercice 9 */

SELECT titre 
FROM film 
WHERE MONTH( date_sortie ) = 6;


/* Exercice 10 */

SELECT DISTINCT user.id 
FROM user INNER JOIN commentaire ON user.id = commentaire.id_user 
WHERE user.role = 1;
