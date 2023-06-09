﻿----1- Selezionare i dati di tutti giocatori che hanno scritto almeno una recensione, mostrandoli una sola volta (996)
--SELECT DISTINCT players.*
--FROM players
--INNER JOIN reviews
--ON players.id = reviews.player_id; --(risultato: 990)

--2- Sezionare tutti i videogame dei tornei tenuti nel 2016, mostrandoli una sola volta (226)
--SELECT videogames.name
--FROM videogames
--INNER JOIN tournament_videogame
--ON videogames.id = tournament_videogame.videogame_id
--JOIN tournaments
--ON tournament_videogame.tournament_id = tournaments.id
--WHERE year LIKE 2016 ----VALORI NULLI IN tournament_videogame


--3- Mostrare le categorie di ogni videogioco (1718)

--SELECT categories.name, videogames.name
--FROM videogames
--INNER JOIN category_videogame
--ON videogames.id = category_videogame.videogame_id
--INNER JOIN categories
--ON category_videogame.category_id = categories.id;

--SELECT videogames.name, categories.name
--FROM categories
--INNER JOIN category_videogame
--ON categories.id = category_videogame.category_id
--INNER JOIN videogames
--ON category_videogame.videogame_id = videogames.id;				----qual'è quello giusto?


--4- Selezionare i dati di tutte le software house che hanno rilasciato almeno un gioco dopo il 2020, mostrandoli una sola volta (6)
--SELECT DISTINCT software_houses.*
--FROM software_houses
--INNER JOIN videogames
--ON software_houses.id = videogames.software_house_id
--WHERE YEAR(videogames.release_date) >= 2020;


--5- Selezionare i premi ricevuti da ogni software house per i videogiochi che ha prodotto (55)
--SELECT awards.name, software_houses.name
--FROM awards
--INNER JOIN award_videogame
--ON awards.id = award_videogame.award_id
--INNER JOIN videogames
--ON award_videogame.videogame_id = videogames.id
--INNER JOIN software_houses
--ON videogames.software_house_id = software_houses.id;

--6- Selezionare categorie e classificazioni PEGI dei videogiochi che hanno ricevuto recensioni da 4 e 5 stelle, mostrandole una sola volta (3363)
--7- Selezionare quali giochi erano presenti nei tornei nei quali hanno partecipato i giocatori il cui nome inizia per 'S' (474)
--8- Selezionare le città in cui è stato giocato il gioco dell'anno del 2018 (36)
--9- Selezionare i giocatori che hanno giocato al gioco più atteso del 2018 in un torneo del 2019 (3306)
--*********** BONUS ***********
--10- Selezionare i dati della prima software house che ha rilasciato un gioco, assieme ai dati del gioco stesso (software house id : 5)
--11- Selezionare i dati del videogame (id, name, release_date, totale recensioni) con più recensioni (videogame id : 398)
--12- Selezionare la software house che ha vinto più premi tra il 2015 e il 2016 (software house id : 1)
--13- Selezionare le categorie dei videogame i quali hanno una media recensioni inferiore a 2 (10)