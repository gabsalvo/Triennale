# Reti di Calcolatori

[Link alle slides](https://elearning.di.unipi.it/pluginfile.php/76463/mod_resource/content/1/L02_StratoApplicativo_URI_HTTP.pdf)

## Capitolo 4

### Lo strato applicativo URI-HTTP

#### Pila Protocollare di Internet

- _applicazione_: supporta le applicazioni di rete (ftp, smtp, http)
- _trasporto_ : trasferimento dati end-to-end (utp, udp)
- _rete_ : instradamento dei datagrammi dalla sorgente alla destinazione
- _link_ : trasferimento dati tra elementi di rete vicini
- _fisico_ : bit 'sul filo'

<p align="center">
  <img src="./assets/rt4-1.png" alt="lan" />
</p>

### Applicazioni di Rete

- Applicazioni formate da processi distribuiti comunicanti

- I processi sono programmi eseguiti dai dispositivi terminali o host o end system di una rete

- All'interno dello stesso host, due processi possono anche comunicare attraverso la comunicazione inter-processo definita dal sistema operativo.

- Nella comunicazione a livello applicativo fra due dispositivi terminali diversi di una rete, due o più processi girano su ciascuno degli host comunicanti e si scambiano messaggi.

### Livello applicazione

- I livelli applicazione nei due lati della comunicazione agiscono come se esistesse un collegamento diretto attraverso il quale poter inviare e ricevere messaggi

<p align="center">
  <img src="./assets/rt4-2.png" alt="lan" />
</p>

### Protocollo dello Strato di Applicazione

- Definisce i _tipi di messaggi_ scambiati a livello applicativo (es: di richiesta e di risposta)

- la sintassi dei vari tipi di messaggio (i campi del messaggio)

- la semantica dei campi (significato)

- le regole per determinare quando e come un pricesso invia messaggi o risponde ai messaggi.

### Paradigma del livello applicazione

- Programmi applicativi su host diversi che comunicano tra di loo scambiandosi messaggi.

- Es. WEB, gestione di un elaboratore remoto, trasferimento e condivisione file, posta elettronica, comunicazione multimediale

- I due programmi applicativi devono essere entrambi in grado di richiedere e offrire servizi, oppure ciscuno deve occuparsi di uno dei due compiti?

**Paradigmi**

- Client-server :
  - numero limitato di processi server che offrono un servizio e sono in esecuzione, in attesa di ricevere richieste.
  - Client: programma che richiede un servizio.
- _Peer to Peer_ : peer che possono offrire servizi e inviare richieste
- _Misto_

#### Il paradigma client-server

**Client**

- Inizia il contatto con il server ("parla per primo")

- tipicamente richiede un servizio al server

**Server**

- forninsce al client il servizio richiesto

- Sempre attivo

<p align="center">
  <img src="./assets/rt4-3.png" alt="lan" />
</p>

### Componenti di un'applicazione di rete: due esempi

**Web**

- Browser sul client
- Server WEB
- Standard per il formato dei documenti (risorse)
- Protocollo HTTP

**Posta Elettronica**

- Standard per il formato dei messaggi
- Programmi di lettura/scrittura sul client
- Server di posta di internet
- Protocolli SMTP, POP3, ecc

**N.B. Il protocollo a livello applicativo è solo un parte dell'applicazione di rete!**

### Applicazione di rete: terminologia

**API: Application programming interface**

- insieme di regole che un programmatore deve rispettare per utilizzare delle risorse.

<p align="center">
  <img src="./assets/rt4-4.png" alt="lan" />
</p>

- un processo a livello applicazione vuole inviare un messaggio al suo omologo su un altro host
- Interagisce con il sistema operativo che implementa i sottostanti livelli dello stack TCP/IP attraverso un'interfaccia.

**Interfaccia Socket**:

- API che funge da interfaccia tra gli strati di un applicazione e di trasporto.
- Socket è la API di Internet per eccellenza.

### Interfaccia Socket

<p align="center">
  <img src="./assets/rt4-5.png" alt="lan" />
</p>
