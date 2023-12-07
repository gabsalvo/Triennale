# Ingegneria del Software

[Link alle slides](http://didawiki.cli.di.unipi.it/lib/exe/fetch.php/informatica/is-a/is_05_e1_esercitazionereq_casid_uso.pdf)

[Link alle slides](http://didawiki.cli.di.unipi.it/lib/exe/fetch.php/informatica/is-a/is_06_classioggetti.pdf)

## Capitolo 5

### Analisi dei Requisiti e casi d'uso: esercitazione

#### Costruzione del diagramma dei casi d'uso

Seguire i seguenti passi:

1. Individuare il confine del sistema
2. Individuare gli attori
3. Individuare i casi d’uso e le relazioni attore-caso d’uso
   a. Cercare funzionalità comuni da modellare con un caso d’uso incluso
   b. Cercare funzioni opzionali o funzioni aggiuntive (extend)
4. Specificare il caso d’uso con una descrizione testuale
   (narrativa)

## Capitolo 6

### UML: Diagramma delle classi e diagramma degli oggetti

**Classi e oggetti, reminder**

Un'oggetto è un'entità caratterizzata da :

- un'identità,
- uno stato
  - (I valori de)gli attributi definiscono lo stato dell'oggetto
- Un comportamento
  - Le operazioni definiscono il suo comportamento

Una classe descrive:

- un insieme di oggetti con caratteristiche simili
- cioè oggetti che hanno lo stessoo tipo

<p align="center">
  <img src="./assets/is6-1.png" alt="is" />
</p>

### Diagramma delle classi

Una classe cattura un concetto nel dominio del problema o della relazione.
Il diagramma delle classi descrive:

- il tipo degli oggetti che fanno parte di un sistema sw o del suo dominio
- Le relazioni statiche tra essi: gli elementi e le relazioni tra essi non cambiano nel tempo

I diagrammi delle classi mostrano anche le proprietà e le operazioni di una classe.

<p align="center">
  <img src="./assets/is6-2.png" alt="is" />
</p>

<p align="center">
  <img src="./assets/is6-1.png" alt="is" />
</p>

### Usi del diagramma delle classi

Il diagramma delle classi può essere usato per descrive il dominio e per la progettazione di dettaglio.

### Livello di astrazione

Quando si usa il diagramma delle classi per descrivere il dominio:

- le operazioni (ritenute a un livello di dettaglio eccessivo) normalmente si omettono.

Concetti importanti di aggregazione, generalizzazione, associazioni riflessive, composizione
