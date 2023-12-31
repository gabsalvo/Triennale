# Ingegneria del Software

[Link alle slides](http://didawiki.cli.di.unipi.it/lib/exe/fetch.php/informatica/is-a/is_03_analisirequisiti.pdf)

## Capitolo 3

### Analisi dei Requisiti

**Studio di fattibilità**

- Descrizione sommaria
- analisi di mercato
- analisi tecnica

### Attività di Analisi dei Requisiiti

1. Capire cosa
2. Documentare cosa
3. Negoziazioni

**Cos'è l'analisi dei requisiti?**

il processo di studio e analisi delle esigenze del committente e dell'utente per giunger alla definizione del dominio del probelma e dei requisiti del sistema.

**Obiettivi dell'analisi dei requisitii**

1. confini del nuovo sistema e come interagisce con ambiente.
2. Individua e risolve difetti dei requisiti
3. Negozia le priorità
4. Elabora i requisiti del sistema
5. Classificare le info sui requisiti in varie categorie e assegnare i requisiti ai sottosistemi.
6. Definire e analizzare i requisiti di qualità

### Le cause di abbandono secondo lo Standish Group

1. Requisiti incompleti
2. Scarso coinvolgimento dell'utente
3. Mancanza di risorse
4. Atese irrealistiche
5. MOdifiche a specifiche e requsiiti
   ...
   ...
   ...
6. Ignoranza tecnologica

<p align="center">
  <img src="./assets/Is-3-1.png" alt="is" />
</p>

`Il 56% degli errori nei requisiti possono essere riferiti al software`

<p align="center">
  <img src="./assets/Is-3-2.png" alt="is" />
</p>

#### Si definisce cosa fare non come farlo

### Prodotto dell'attività di analisi

Documento e/o modello che descrive:

- il dominio del sistema da realizzare
- i requisiti utente

Opzionalmente anche:

- manuale utente
- Casi di test

**Dominio**
ambito o contesto in cui il software opera

Prima ancora di incontrare i committenti, il team di analisi deve acuisre conoscenza del dominio.

Si costruire un _glossario_ -> dizionare con la definizione dei termini
Si definiscono un _modello statico_ e un _modello dinamico_.

### Modello statico (usando UML)

<p align="center">
  <img src="./assets/Is-3-3.png" alt="is" />
</p>

### Modello dinamico, descrizione testuale

<p align="center">
  <img src="./assets/Is-3-4.png" alt="is" />
</p>

### Modello dinamico, usando UML

<p align="center">
  <img src="./assets/Is-3-5.png" alt="is" />
</p>

### Descrizione del dominio

- entità
- relazioni
- processi
- comportamenti

che esulano dal sistema software che deve essre realizzato.
Il dominio esiste prima del software.

### Definizione di Requisito

<p align="center">
  <img src="./assets/Is-3-6.png" alt="is" />
</p>

### Requisiti funzionali

Descrivono le funzionalità : azioni da compiere, come il sistema reagisce, come si comporta in situazione x (riferite al sitema)

**Esempio**: Ogni nuovo ordine = unique_ID

### Requisiti non funzionali

Descrivono le proprietà del software in relazione a determinati servizi o funzioni e possono anche essere relativi al processo. (software e cose esterne)

Caratteristiche di qualità, del processo di sviluppo, esterne.

**Esempio**: tempo di risposta all'inserimento della password utente deve essere meno di 10sec.

<p align="center">
  <img src="./assets/Is-3-7.png" alt="is" />
</p>

<p align="center">
  <img src="./assets/Is-3-8.png" alt="is" />
</p>

<p align="center">
  <img src="./assets/Is-3-9.png" alt="is" />
</p>

### Documento dei requisiti

- Elenca i requisiti del sistema da utilizzare.
  Specifica cosa il prodotto deve fare e quali sono i vincoli che deve soddisfare.

- É un contratto tra svilup e committente.
- Specifica anche in genere una deadline per la consegna del prodotto

### Analisi dei requisiti in 5 passi

1. Acquisizione
2. Elaborazione
3. Convalida
4. Negoziazione
5. Gestione

<p align="center">
  <img src="./assets/Is-3-10.png" alt="is" />
</p>

<p align="center">
  <img src="./assets/Is-3-11.png" alt="is" />
</p>

Non dovete scrivere un poema in versi, usate la
forma assertiva:
Il <sistema> deve <funzionalità>/<proprietà>
Esempi:
◦ Il sistema deve gestire tutti i registratori di cassa del negozio
◦ Il sistema deve stampare la sintesi degli incassi della giornata
◦ A fine giornata il sistema deve elencare quali sono gli articoli da
reintegrare in base alle vendite
◦ Il tempo di risposta del sistema a qualunque interrogazione deve
essere inferiore a 3 secondi

Difetti da evitare in un documento dei requisiti
 Omissioni (incompletezze)
Mancata presenza di un requisito (incompletezza)
 Inconsistenze
Contraddizione fra i vari requisiti o dei requisiti rispetto all’ambiente
operativo
 Ambiguità
Requisiti con significati multipli
 Sinonimi e omonimi
Termini diversi con il medesimo significato e termini uguali con
differenti significati
 Presenza di dettagli tecnici
 Ridondanza
Può esserci ridondanza, ma solo tra sezioni diverse

<p align="center">
  <img src="./assets/Is-3-12.png" alt="is" />
</p>

### Negoziazione: MoSCoW

MoSCoW: tecnica per dare priorità ai requisiti, che sono divisi nelle
classi:
◦ Must have (Requisiti obbligatori)
◦ Irrinunciabili per il cliente
◦ Should have (Requisiti desiderabili)
◦ Non necessari, ma utili
◦ Could have (Requisiti opzionali)
◦ Relativamente utili, da realizzare se c’è tempo
◦ Want to have (Requisiti postponibili)
◦ Contrattabili per successive versioni

#### Gestione: tracciabilità

La tracciabilità è la capacità di descrivere e seguire la vita di un requisiito del processo di sviluppo.

Mappa tra requisiti e componenti del sistema, codice, test

Strumenti CASE per la gestione dei requsiiti.

<p align="center">
  <img src="./assets/Is-3-13.png" alt="is" />
</p>

<p align="center">
  <img src="./assets/Is-3-14.png" alt="is" />
</p>

<p align="center">
  <img src="./assets/Is-3-12.png" alt="is" />
</p>
