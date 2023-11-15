# Garbage Collector

Vediamo di fare una piccola introduzione a cosa sono, come funzionano e vediamo poi di rispondere alle domande che pone il prof:

- `motivazioni e problematiche`
- `reference counting`
- `mark-and-sweep`
- `copy collection `
- `approcci generazionali`

Sono nati dal bisogno di liberare e poter riallocare memoria dell'heap che non viene più utilizzata. Questo succede in linguaggi che non prevedeno la gestione della memoria da parte del programmatore. Vedi il `C` con `malloc` e `free`, il garbage collector non ha motivo di esistere, vedi `Java` il discorso comincia ad avere senso.

**Le operazioni del garbage collector si dividono in due fasi:**

1. _garbage detection_: distinguere tra le risorse in uso e quelle 'morte'
2. _collection_: raccogliere gli oggetti non in uso, in modo che il programma li può riutilizzare.

Le due fasi non sono sempre separate e dipende da come decidiamo che un oggetto non è più in uso e questo criterio ci permette anche di classificare i vari GC.
Non possiamo lasciare solo al GC di decidere se una risorsa può essere riutilizzata oppure no.

**Tecniche che vedremo**:

- `reference counting`
- `mark-and-sweep`
- `copy collection `

In generale però, le tecniche che consideriamo devono essere capaci di riconoscere quei campi all'interno di un oggetto che corrisponde ai puntatori.

## Reference Counting

Il modo più semplice per verificare che si sta usando un oggetto è controllare se questo ha puntatori attached to it. Questa è la reference counting technique.

Prendiamo un intero chiamato:

- `reference counter` oppure `reference count` per ogni oggetto.

Il programmatore non può accedervi. Il compito di tenere traccia di questo numero, che rispechia il numero di puntatori ancora attivi, ricade sulla macchina astratta.
Per farlo quando un oggetto viene creato, il contatore è iniziallizzato a 1.

Quando abbiamo l'assegnamento di un puntatore: `p = q;` il counter che appartiene all'oggetto puntato da `q` è incrementato di 1 mentre il contatore dell'oggetto puntato da `p` è diminuito di 1.

<p align="center">
  <img src="/assets/pdp1.pdf" alt="data-structure" />
</p>
