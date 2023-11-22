# Reti di Calcolatori

[Link alle slides](https://drive.google.com/drive/folders/1iEMXGyVoyG3R9uhDmQOehlWevSgJkDmE)

## Capitolo 1

Parleremo di Internet, LAN/WAN e Interconnessione di Reti

## Internet

- `Protocolli` :  
  Invio e ricezioni messaggi, HTTP, TCP, IP, WiFi, 4G, Ethernet

- `Internet Standards` :  
  Ogni rete connessa a Internet deve usare IP e rispettare certe convenzioni.  
  Facile scalare con nuove reti.

- `Internet Composto da` :

1.  Miliardi di disp connessi o hosts
2.  Reti di accesso, lInk di comunicazione (fibra, rame, onde, satelliti)
3.  Dispositivi di interconnesione (router e switch)
4.  Reti (insieme di host, dispositivi di interconnessione, router, link gestiti da una org)

- `Internet vista dai servizi` :

1.  Infrastruttura (Web, streaming video ecc ecc)
2.  Interfaccia di programmazione (hooks)

- `Internet vista dalle entità software` :

1.  Applicazioni
2.  Protocollo
3.  Interfacce (sono le membrane che seprano gli strati della pila protocollare)
4.  Standard Internet e Web

### Definizioni

**Rete** :  
 un'interconnesione di dispositivi in grado di scambiarsi informazioni, quali sistemi terminali, router, switch e modem.  
 _I sistemi Terminali_ sono gli _host_ (pc, tablet, laptop)

_I dispositivi di internconnesione_ ->  
 Router (dispositivi che interconnettono reti) / Switch (collegano più host localmente)

## LAN (Local Area Network)

Sono reti locali, circoscritte ad una certa area. Sono private, Tipicamente si estendono qualche km. Usate per connettere sistemi terminali, tipo, pc, wrokstations e stampanti.
Sono o wireless o col cavo di rame.

<p align="center">
  <img src="./assets/reti1.png" alt="lan" />
</p>

<p align="center">
  <img src="./assets/reti2.png" alt="lan2" />
</p>

## WAN (Wide Area Network)

É una rete il cui compito è interconnettere LAN o singoli host molto distanti tra loro. WAN è solitamente gestita da un operatore di rete che fornisce servizi ai clienti.

`WAN punto-punto`:  
collega due dispositivi tramite un mezzo trasmissivo

<p align="center">
  <img src="./assets/reti3.png" alt="lan" />
</p>

`WAN a commutazione` :  
collega più di due punti di terminazione (usata nelle dorsali internet)

- _Elementi di commutazione:_  
  eleaboratori specializzati utilizzati per connettere fra loro due po più linee di trasmissione

  <p align="center">
    <img src="./assets/reti4.png" alt="lan" />
  </p>

### Interconnesione di Reti

Solitamente, lo scenario è varie LAN interconnesse da LAN.
Esempio:  
 reti locali nelle sedi di aziende, dislocate sul territorio nazionale.  
 Genera così una rete internet privata che interconnette le reti locali dei vari uffici

 <p align="center">
  <img src="./assets/reti5.png" alt="lan" />
</p>  
<p align="center">
  <img src="./assets/reti6.png" alt="lan" />
</p>

### Esempio di WAN

<p align="center">
  <img src="./assets/reti7.png" alt="lan" />
</p>

Utilizzando una rete gestita da un provider di servizi internet (ISP) commerciale è possibile

<p align="center">
  <img src="./assets/reti7.png" alt="lan" />
</p>

### Rete GARR

Interconnette le uni, biblioteche, centri di ricerca, musei, scuole e altri luoghi in cui si fa istruzione, scienze e cultura ecc ecc. L'infrastruttura in fibra ottica e si sviluppa su circa 15.000 km tra collegamenti di dorsale e di accesso.
Capacità odierna delle singole tratte della dorsale arriva a _200GBps_
_100 punti di presenza_ distribuiti capillari nel territorio.

### Rete di area metropolitana MAN

Rete di computer che collega al'interno di un area metropolitana.

- più grande id una LAN, più città e paesi , ma più piccolà di una WAN.

<p align="center">
  <img src="./assets/reti8.png" alt="lan" />
</p>
