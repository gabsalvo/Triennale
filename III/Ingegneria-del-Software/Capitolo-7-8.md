# Ingegneria del Software

[Link alle slides 7](http://didawiki.cli.di.unipi.it/lib/exe/fetch.php/informatica/is-a/is_08a_attivita.pdf)

[Link alle slides 8](http://didawiki.cli.di.unipi.it/lib/exe/fetch.php/informatica/is-a/is_08b_stati.pdf)

## Capitolo 7

### Diagramma di attività

## Capitolo 8

### Diagramma di macchina a stati

- É un grafo stati transizioni che descrive il comportamento delle istanze di una classe.
- Occorre individuare gli stati significativi in cui si può trovare un oggetto durante la sua vita.
- Inoltre dobbiamo descrivere come da ciascuno di questi stati l'oggetto può passare (transire) in un altro.
- Si transisce in risposta ad un evento.

#### Transizione

<p align="center">
  <img src="./assets/is8-1.png" alt="is" />
</p>

<p align="center">
  <img src="./assets/is8-2.png" alt="is" />
</p>

#### Evento

- Un evento occorre istantaneamente.
- é ammeesso il non-determinismo.
- Livello di astrazione/dettaglio: introducete un evento se ha degli effetti.

##### Tipo di evento

- Operazione o segnale : `op(a:T)`

- Evento di variazione : `when(exp)`

- EVento Temporale : `after(time)`

##### Segnali

Segnali (busy e connected)

<p align="center">
  <img src="./assets/is8-3.png" alt="is" />
</p>

#### Eventi di variazione ed eventi temporali

- Eventi di variazione, a che servono? Occore all'istante, ma la condizione non è istatanea, il momento in cui diventa vera è istantanea.

- Evento Temporale, dopo che l'oggetto è stato 3 mesi fermo nello scoperto, transisce nello stato Congelato.

<p align="center">
  <img src="./assets/is8-4.png" alt="is" />
</p>

<p align="center">
  <img src="./assets/is8-5.png" alt="is" />
</p>

<p align="center">
  <img src="./assets/is8-6.png" alt="is" />
</p>

<p align="center">
  <img src="./assets/is8-7.png" alt="is" />
</p>

<p align="center">
  <img src="./assets/is8-8.png" alt="is" />
</p>

<p align="center">
  <img src="./assets/is8-9.png" alt="is" />
</p>

#### Stati compositi, sequenziali e paralleli

- Composito sequenziale:
  - un solo sottostao attivo in ogni istante

<p align="center">
  <img src="./assets/is8-10.png" alt="is" />
</p>

- Composito parallelo:
  - sottostati attivi
  - uno per regione

<p align="center">
  <img src="./assets/is8-11.png" alt="is" />
</p>

#### Sottomacchine

Si quando si vuole descrivere uno stato composito in un diagramma a parte, per leggibilità o per definitlo e riusarlo in più contesti.

<p align="center">
  <img src="./assets/is8-12.png" alt="is" />
</p>
