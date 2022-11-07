/* Exercice 1 */

/* Partie 1 */
SELECT * FROM `film` WHERE date_sortie > 1960;

/* Partie 2 */
SELECT titre FROM `film` WHERE date_sortie < 1960;


/* Exercice 2 */

UPDATE film SET description = "Pilule bleue ou pilule rouge ?" WHERE film.id = 35;


/* Exercice 3 */
