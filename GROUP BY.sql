----1- Contare quante software house ci sono per ogni paese (3)
--SELECT COUNT(*) AS Software_house_4_country, country 
--FROM software_houses
--GROUP BY country;


--2- Contare quante recensioni ha ricevuto ogni videogioco (del videogioco vogliamo solo l'ID) (500)
--SELECT COUNT(videogame_id) AS n_reviews
--FROM reviews
--GROUP BY videogame_id;


----3- Contare quanti videogiochi hanno ciascuna classificazione PEGI (della classificazione PEGI vogliamo solo l'ID) (13)
--SELECT COUNT(videogame_id) AS n_videogames
--FROM pegi_label_videogame
--GROUP BY pegi_label_id;


----4- Mostrare il numero di videogiochi rilasciati ogni anno (11)
--SELECT COUNT(id)
--FROM videogames
--GROUP BY YEAR(release_DATE);


----5- Contare quanti videogiochi sono disponbiili per ciascun device (del device vogliamo solo l'ID) (7)
--SELECT COUNT(videogame_id)
--FROM device_videogame
--GROUP BY device_id;

----6- Ordinare i videogame in base alla media delle recensioni (del videogioco vogliamo solo l'ID) (500)
--SELECT AVG(rating) AS average
--FROM reviews
--GROUP BY videogame_id
--ORDER BY AVG(rating) DESC
