CREATE TABLE VIOLAZIONE(
	IDViolazione INT PRIMARY KEY IDENTITY NOT NULL,
	Descrizione nvarchar(50) NOT NULL,
	Importo Money not null,
)

CREATE TABLE TRASGRESSORE(
	IDTrasgressore INT PRIMARY KEY IDENTITY NOT NULL,
	Cognome nvarchar(30) NOT NULL,
	Nome nvarchar(30) NOT NULL,
	Indirizzo nvarchar(50) not NULL,
	Citta nvarchar(40) NOT NULL,
	CAP char(5) NOT NULL,
	CodiceFiscale char(16) not NULL unique,
)

CREATE TABLE VERBALE(
	IDVerbale INT PRIMARY KEY IDENTITY NOT NULL,
	DataViolazione DATE not NULL,
	IndirizzoViolazione nvarchar(50) not NULL,
	Agente nvarchar(50) NOT NULL,
	DataVerbale DATE not NULL,
	DecurtamentoPunti INT NOT NULL,
	IDViolazione INT NOT NULL,
	IDTrasgressore INT NOT NULL

	CONSTRAINT FK_Violazione_Verbale
	FOREIGN KEY (IDViolazione) REFERENCES VIOLAZIONE (IDViolazione),

	CONSTRAINT FK_Trasgressore_Verbale
	FOREIGN KEY (IDTrasgressore) REFERENCES TRASGRESSORE (IDTrasgressore)
)

INSERT INTO VIOLAZIONE VALUES ('Divieto di Sosta', 130)
INSERT INTO VIOLAZIONE VALUES ('Deturpazione del suolo pubblico', 100)
INSERT INTO VIOLAZIONE VALUES ('Disturbo della quiete pubblica', 200)
INSERT INTO VIOLAZIONE VALUES ('Eccesso di velocità', 150)
INSERT INTO VIOLAZIONE VALUES ('Guida in stato di ebrezza', 280)
INSERT INTO VIOLAZIONE VALUES ('Guida sotto effetto di stupefacenti', 280)
INSERT INTO VIOLAZIONE VALUES ('divieto scarichi', 100)
INSERT INTO VIOLAZIONE VALUES ('Falsificazione targa', 250)
INSERT INTO VIOLAZIONE VALUES ('Guida senza patente', 220)
INSERT INTO VIOLAZIONE VALUES ('Omissione di soccorsi', 200)


INSERT INTO TRASGRESSORE VALUES ('Di Filippo', 'Daniela', 'Via Carducci, 85', 'Paestum', '84047', 'DFLDNL83K45P787F')
INSERT INTO TRASGRESSORE VALUES ('Rossi', 'Paolo', 'Via Roma, 35', 'Napoli', '95047', 'RSSPLO89R76C898K')
INSERT INTO TRASGRESSORE VALUES ('Stano', 'Bruno', 'Via Vicini, 66', 'Napoli', '93070', 'STNBRN80H53L717S')
INSERT INTO TRASGRESSORE VALUES ('Puccio', 'Marco', 'Via Giallini, 29', 'Caserta', '92047','PCCMRC86G45L727S')
INSERT INTO TRASGRESSORE VALUES ('Daniele', 'Pietro', 'Via Novara, 78', 'Agropoli', '78098', 'DNLPTR92M10A717S')
INSERT INTO TRASGRESSORE VALUES ('Laguna', 'Stefano', 'Via Salvo, 77', 'Paestum', '84047', 'LGNSTF82G34L823M')
INSERT INTO TRASGRESSORE VALUES ('Verdi', 'Daniele', 'Via Bianchi, 85', 'Eboli', '86089', 'VRDDNL90R45M898S')
INSERT INTO TRASGRESSORE VALUES ('Lerra', 'Nicola', 'Via Gialli, 59', 'Battipaglia', '95047', 'LRRNCL87G36M824L')
INSERT INTO TRASGRESSORE VALUES ('Aliotta', 'Cristiano', 'Via Aragona, 35', 'Battipaglia', '95047', 'LTTCRT93H64P723M')
INSERT INTO TRASGRESSORE VALUES ('Filippi', 'Lucia', 'Via Ammiraglio, 38', 'Paestum', '84047', 'LGNSTF80H53L717S')
INSERT INTO TRASGRESSORE VALUES ('De Rosa', 'Giulia', 'Via Sole, 37', 'Nocera', '98098', 'LGNSTF90R45M898S')
INSERT INTO TRASGRESSORE VALUES ('Ponzani', 'Simone', 'Via Hera, 111', 'Paestum', '84047', 'LGNSTF87G36M824L')
INSERT INTO TRASGRESSORE VALUES ('Guida', 'Giuseppe', 'Via Poseidonia, 123', 'Paestum', '84047', 'LGNSTF93H64P723M')
INSERT INTO TRASGRESSORE VALUES ('Guerra', 'Maria', 'Via Clark, 78', 'Agropoli', '78098', 'LGNSTF80H53L718S')
INSERT INTO TRASGRESSORE VALUES ('Senatore', 'Luca', 'Via Colombo, 77', 'Padova', '95047', 'SNTLCU82G34L823M')
INSERT INTO TRASGRESSORE VALUES ('Noce', 'Maria', 'Via Verdi, 56', 'Novara', '95047', 'NCOMRA82G34L823M')
INSERT INTO TRASGRESSORE VALUES ('Marino', 'Mirko', 'Via Palude, 22', 'Caserta', '92047', 'MRNMRK90R45M898S')
INSERT INTO TRASGRESSORE VALUES ('Martini', 'Lamberto', 'Via Giovani, 98', 'Caserta', '92047', 'MRTLMB87G36M824L')
INSERT INTO TRASGRESSORE VALUES ('Di Pisa', 'Giuseppe', 'Via Cleo, 99', 'Eboli', '86089', 'DPSGSP93H64P723M')
INSERT INTO TRASGRESSORE VALUES ('Monte', 'Alessia', 'Via Vicinanza, 44', 'Battipaglia', '95047', 'MNTLSS80H53L717S')

INSERT INTO VERBALE VALUES ('2009-05-04', 'Via delle Camelie - Salerno', 'Ricci Mario', '2009-05-13', '5', 4, 5)
INSERT INTO VERBALE VALUES ('2009-02-03', 'Via delle Rose - Roma', 'Ricci Mario', '2009-02-13', '10', 1, 6)
INSERT INTO VERBALE VALUES ('2019-10-04', 'Via Ricciardi - Caserta', 'Gallo Gino', '2019-10-13', '15', 2, 8)
INSERT INTO VERBALE VALUES ('2009-03-20', 'Via Dante - Novara', 'Pavia Luigi', '2009-03-28', '10', 3, 10)
INSERT INTO VERBALE VALUES ('2017-10-04', 'Via Allodi - Padova', 'Primo Leonardo', '2017-10-13', '15', 5, 12)
INSERT INTO VERBALE VALUES ('2009-05-04', 'Via Marino - Eboli', 'Primo Leonardo', '2009-05-13', '5', 6, 20)
INSERT INTO VERBALE VALUES ('2009-02-03', 'Via Amalfi - Battipagia', 'Primo Leonardo', '2009-02-13', '5', 7, 1)
INSERT INTO VERBALE VALUES ('2009-10-04', 'Via Positano - Paestum', 'Primo Leonardo', '2009-10-13', '10', 8, 4)
INSERT INTO VERBALE VALUES ('2009-03-20', 'Via delle Marmotte - Agropoli', 'Pavia Luigi', '2009-03-28', '15', 9, 7)
INSERT INTO VERBALE VALUES ('2017-10-04', 'Zona Vomero - Napoli', 'Ricci Mario', '2017-10-13', '10', 10, 9)
INSERT INTO VERBALE VALUES ('2009-05-04', 'Via Calliope - Bari', 'Ricci Mario', '2009-05-13', '15', 10, 19)
INSERT INTO VERBALE VALUES ('2009-02-03', 'Via Madonna del Carmine - Salerno', 'Ricci Mario', '2009-02-13', '15', 9, 16)
INSERT INTO VERBALE VALUES ('2009-10-04', 'Via Paleos - Agropoli', 'Pavia Luigi', '2009-10-13', '10', 8, 13)
INSERT INTO VERBALE VALUES ('2017-10-04', 'Via Magna Graecia - Paestum', 'Gallo Gino', '2017-10-13', '10', 6, 2)
INSERT INTO VERBALE VALUES ('2009-05-04', 'Via Cavour - Battipaglia', 'Gallo Gino', '2009-05-13', '5', 4, 3)
INSERT INTO VERBALE VALUES ('2009-02-03', 'Via degli Struzzi - Battipaglia', 'Primo Leonardo', '2009-02-13', '10', 5, 15)
INSERT INTO VERBALE VALUES ('2009-10-04', 'Via Precipizio - Nocera', 'Primo Leonardo', '2009-10-13', '15', 3, 17)
INSERT INTO VERBALE VALUES ('2009-03-20', 'Via delle Monache - Pagani', 'Primo Leonardo', '2009-03-28', '10', 2, 18)
INSERT INTO VERBALE VALUES ('2017-10-04', 'Via Ammiraglio Vecchio - Paestum', 'Gallo Gino', '2017-10-13', '5', 1, 11)
INSERT INTO VERBALE VALUES ('2009-03-20', 'Via Hera - Paestum', 'Ricci Mario', '2009-03-28', '1', 7, 21)

--1. Conteggio dei verbali trascritti:
SELECT COUNT(*) AS TotVerbali FROM VERBALE

--2. Conteggio dei verbali trascritti raggruppati per anagrafe:
SELECT COUNT(*) AS TotVerbali, Cognome, Nome
FROM VERBALE 
INNER JOIN
TRASGRESSORE ON
VERBALE.IDTrasgressore = TRASGRESSORE.IDTrasgressore
GROUP BY Cognome, Nome
ORDER BY Cognome

--3. Conteggio dei verbali trascritti raggruppati per tipo di violazione:
SELECT COUNT(*) AS TotVerbali, Descrizione
FROM VERBALE INNER JOIN VIOLAZIONE ON
VERBALE.IDViolazione = VIOLAZIONE.IDViolazione
GROUP BY Descrizione

--4. Totale dei punti decurtati per ogni anagrafe:
SELECT SUM(DecurtamentoPunti) AS TotPuntiDecurtati, Cognome, Nome
FROM VERBALE 
INNER JOIN
TRASGRESSORE ON
VERBALE.IDTrasgressore = TRASGRESSORE.IDTrasgressore
GROUP BY Cognome, Nome
ORDER BY Cognome

--5. Cognome, Nome, Data violazione, Indirizzo violazione, importo e punti decurtati per tutti gli anagrafici residenti a Palermo:
UPDATE TRASGRESSORE SET Citta = 'Palermo' 
WHERE IDTrasgressore = 10
UPDATE TRASGRESSORE SET Citta = 'Palermo' 
WHERE IDTrasgressore = 8
UPDATE TRASGRESSORE SET Citta = 'Palermo' 
WHERE IDTrasgressore = 20
UPDATE TRASGRESSORE SET Citta = 'Palermo' 
WHERE IDTrasgressore = 16
UPDATE TRASGRESSORE SET Citta = 'Palermo' 
WHERE IDTrasgressore = 12

SELECT Cognome, Nome, DataViolazione, IndirizzoViolazione, Citta, Importo, DecurtamentoPunti
FROM VERBALE
INNER JOIN
TRASGRESSORE ON
VERBALE.IDTrasgressore = TRASGRESSORE.IDTrasgressore
INNER JOIN
VIOLAZIONE ON
VERBALE.IDViolazione = VIOLAZIONE.IDViolazione
WHERE Citta = 'Palermo'

--6. Cognome, Nome, Indirizzo, Data violazione, importo e punti decurtati per le violazioni fatte tra il febbraio 2009 e luglio 2009:
SELECT Cognome, Nome, IndirizzoViolazione, DataViolazione, Importo, DecurtamentoPunti
FROM VERBALE
INNER JOIN
TRASGRESSORE ON
VERBALE.IDTrasgressore = TRASGRESSORE.IDTrasgressore
INNER JOIN
VIOLAZIONE ON
VERBALE.IDViolazione = VIOLAZIONE.IDViolazione
WHERE DataViolazione BETWEEN '2009-02-01' AND '2009-07-01'
ORDER BY DataViolazione

--7. Totale degli importi per ogni anagrafico:
SELECT SUM(Importo) AS TotImportoMulte, Cognome, Nome
FROM VERBALE
INNER JOIN
TRASGRESSORE ON
VERBALE.IDTrasgressore = TRASGRESSORE.IDTrasgressore
INNER JOIN
VIOLAZIONE ON
VERBALE.IDViolazione = VIOLAZIONE.IDViolazione
GROUP BY Cognome, Nome
ORDER BY Cognome

--8. Visualizzazione di tutti gli anagrafici residenti a Palermo:
SELECT * FROM TRASGRESSORE
WHERE Citta='Palermo'

--10. Conteggio delle violazioni contestate raggruppate per Nominativo dell’agente di Polizia:
SELECT COUNT(*) AS MulteEffettuate, Agente 
FROM VERBALE
group by Agente

--11. Cognome, Nome, Indirizzo, Data violazione, Importo e punti decurtati per tutte le violazioni 
--che superino il decurtamento di 5 punti:
SELECT Cognome, Nome, IndirizzoViolazione, DataViolazione, Importo, DecurtamentoPunti
FROM VERBALE
INNER JOIN
TRASGRESSORE ON
VERBALE.IDTrasgressore = TRASGRESSORE.IDTrasgressore
INNER JOIN
VIOLAZIONE ON
VERBALE.IDViolazione = VIOLAZIONE.IDViolazione
WHERE DecurtamentoPunti > 5

--12. Cognome, Nome, Indirizzo, Data violazione, Importo e punti decurtati per tutte le violazioni 
--che superino l'importo di 400 euro:
UPDATE VIOLAZIONE SET Importo = 500
WHERE IDViolazione=5
UPDATE VIOLAZIONE SET Importo = 500
WHERE IDViolazione=6

SELECT Cognome, Nome, IndirizzoViolazione, DataViolazione, Importo, DecurtamentoPunti
FROM VERBALE
INNER JOIN
TRASGRESSORE ON
VERBALE.IDTrasgressore = TRASGRESSORE.IDTrasgressore
INNER JOIN
VIOLAZIONE ON
VERBALE.IDViolazione = VIOLAZIONE.IDViolazione
WHERE Importo > 400
