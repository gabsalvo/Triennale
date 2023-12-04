# Reti di Calcolatori

[Link alle slides](https://elearning.di.unipi.it/pluginfile.php/75852/mod_resource/content/1/L01_intro_reti_parte2.pdf)

## Capitolo 2

Parliamo di commutazione di circuito vs commutazione di pacchetto.
Metriche di riferimento, ritardo in una rete a commutazione di pacchetto.

### Commutazione

- Un internework è data dall'internconnesione di reti, composto da link e dispositivi capaci di scambiarsi informazioni.

- In particolare si distungono in dispostivi:

  1. Terminali
  2. Dispositivi di internconnesione che si trovano nel percorso (o rotta) tra i sistemi sorgente e destinazione nella comunicazione tra host.

- Problema : vogliamo stabilire una comunicazione.

- Domande:
  1. Come determinare il percorso da sorgente a destinazione?
  2. Come trasferire delle info da porta di ingresso a uscita?

#### Tecniche di commutazione

Ovvero la modalità con cui viene determinato il percorso sorgente-destinazione e vengono dedicate ad esso le risorse della rete.

Meccanismi principali:

- Circuit-switched netowrk -> _Reti a commutazione di circuito_
- Packet-switched network -> _Reti a commutazione di pacchetto_

### Commutazione di circuito

- Instaura un _cammino dedicato_ tra i due dispositivi che vogliono comunicare.
  l’instradamento avviene una volta per tutte prima della comunicazione, e
  l’attraversamento impegna in modo permanente ed esclusivo le risorse
  fisiche dei nodi della rete, es. telefonia.

### Commutazione di circuito

- Il percorso viene stabilito all'inizio della comunicazione (setup)

- Sul percorso vengono dedicate risorse alla comunicazione (canale logico circuito) in modo esclusivo. Banda di frequenza o slot di trasmissione sui collegamenti. Capacità commutative nei nodi.

Risorse end-end allocate e risrvate alla 'comnicazione' tra sorgente e destinazione.

<p align="center">
  <img src="./assets/rt2-1.png" alt="lan" />
</p>

#### Commutazione di circuito: FDM e TDM

- **Frequency Division Multiplexing (FDM)**:
  Frequenze ottiche, elettromagnetiche suddivise in bande di frequenza (strette).  
  Ad ogni comunicazione è assegnata una certa banda

- **Time Division Multiplexing (TDM)**:
  Tempo suddiviso in slot di tempo,  
   ogni comunicazione ha uno o più slot periodici assegnati  
   può trasmettere alla velocità massima di una banda di frequenza (più ampia), ma solo durante i suoi intervalli di tempo.

<p align="center">
  <img src="./assets/rt2-2.png" alt="lan" />
</p>

#### Commmutazione di circuito, svantaggi e vantaggi

<p align="center">
  <img src="./assets/rt2-3.png" alt="lan" />
</p>

### Commutazione di pacchetto

1. Il flusso di dati punto-punto viene suddiviso in pacchetti

   - i pacchetti degli utenti A e G condividono le risorse di rete
   - ogni pacchetto è instardato singolarmente e indipendentemente dagli altri pacchetti della stessa comunicazione (possono eseguire lo stesso percorso o percorsi diversi)
   - le risorse vengono usate a seconda delle necessità

2. Trasmissione, store and forward
   - Il commmutatore deve ricevere l'intero pacchetto prima di poter cominciare a trasmettere il primo bit del pacchetto sul collegamento in uscita, portando così un ritardo di store e forward.
   - Attesa dei paccheti in code di output (buffer) -> ritardi di coda
   - I buffer hanno dimensione finita -> perdita di pacchetti

<p align="center">
  <img src="./assets/rt2-4.png" alt="lan" />
</p>

**Non esiste un canale dedicato**, gli host semplicement esi scambiano pacchetti.

- i pacchetti possono essre memorizati dai router nelle code (buffer).
- Se il collegamento tra i due router è usato alla massima capacità, gli ulteriori pacchetti che arrivano vengono messi in coda.

**Contesa per le risorse**

- La richiesta di risorse può essere essere maggiore di quanto è possibile dare
- Congestione: accodamento dei pacchetti, attesa per l'utilizzo del collegamento
- Utilizzo efficiente delle risorse ma non c'è garanzia nelle prestazioni

### Circuit switching vs packet switching

<p align="center">
  <img src="./assets/rt2-5.png" alt="lan" />
</p>

- **Circuit switching**

  - Bisogna riservare 100Mbps per ogni utente, in ogni istante.
  - Il link di output può quindi sopportare un massimo di: `1Gbps/100Mbps = 10 utenti`

- **Packet Switching**
  - 10 o meno utenti simultanei attivi -> banda richiesta `<=1Mbps`, ritardo trascurabile
  - Più di 10 utenti attivi insieme -> frequenza aggregata di arrivo dei dati supera capacità del collegamento in uscita e quindi si incrementa il ritado di accodamento.
  - N.B la propabilità che ci siano 10 o meno utenti attivi insieme è 0.9996
  - con prob tecnica, questo metodo supporta tutti gli utenti senza ritardo

**La commutazione di pacchetto consente a più utenti di usare la rete**

<p align="center">
  <img src="./assets/rt2-6.png" alt="lan" />
</p>

### Metriche

Come misurare le prestazioni della rete.

- Ampiezza di banda e bitrate
- Throughput
- Latenza
- Prodotto rate \* ritatdo
