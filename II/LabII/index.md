# Indice argomenti

Lezione 1 (15/9/22)

    Introduzione al linguaggio C. Esempio di lettura e scrittura di interi dal terminale. Compilazione. Esecuzione di programmi

Codice sorgente: somma.c

Lezione 2 (20/9/22)

    Allocazione dinamica di array in C. Funzioni: malloc/free/realloc.
    introduzione al makefile; compilazione con il comando make
    Utilizzo di valgrind per verificare il corretto utilizzo degli array

Lezione 3 (27/9/22)

    Introduzione ai puntatori
    Significato e uso di * e &
    Esempio passaggio parametri per riferimento

Lezione 4 (29/9/22)

    Ancora sui puntatori
    Rappresentazione di stringhe in C
    Uso dei parametri argc/argv

Lezione 5 (4/10/22)

    Ancora su argc/argv
    Copia di un puntatore vs copia di un array: la funzione strdup()
    Scrittura in un file di testo: fopen(), fprintf(), fclose()

Lezione 6 (6/10/22)

    Uso di asserzioni
    lettura di un array di interi da un file
    stdout/stderr/stdin e loro ridirezione
    funzione perror() e variabile globale errno
    esercizio su array (cencella5x su replit)

Lezione 7 (11/10/22)

    Equivalenza fra *a e a[0]
    Equivalenza fra a e &a[0], significato di &a[i]
    Aritmetica dei puntatori: definizione di a+i come &a[i]
    Calcolo lunghezza di una stringa usando l'aritmetica dei puntatori
    Esempio di uso dell'aritmetica dei puntatori nel mergesort

Lezione 8 (13/10/22)

    Significato del tipo const char *
    Lettura di stringhe con fscanf: problematica del buffer overflow
    Evitare il buffer overflow: modificatori %Ns (con N massimo numero di caratteri) e %ms
    Mergesort di stringhe
    Costruzione di stringhe mediante asprintf

Lezione 9 (18/10/22)

    definizione di tipi composti con struct
    definizione di nuovi tipi con typedef e uso combinato con struct
    operazioni sui tipi composti, notazione .
    array di struct, esempio: array di coppie
    puntatori a struct, notazione ->
    array di puntatori a struct, esempio: array di capitali

Lezione 10 (20/10/22)

    Esercitazione in aula (primo esonero)
    Ordinamento array di (puntatori) a struct
    introduzione all'uso delle funzioni come parametri di altre funzioni
    Mergesort con funzione di confronto passatra come argomento (Lezione 11)

Lezione 11 (25/10/22)

    introduzione alle linked list*
    creazione, stampa, distruzione di liste
    inserimento in testa e in coda ad una lista

Lezione 12 (27/10/22)

    inserimento in lista ordinata
    funzione di inserimento ricorsiva e parametrica
    esercizi Verilog

Lezione 13 (3/11/22)

    cancellazione da una lista con e senza ricorsione
    esercizi Verilog

Lezione 14 (8/11/22)

    lettura da file con getline()
    parsing di stringhe mediante strtok()
    variabili statiche

Lezione 15 (10/11/22)

`Organizzazione del codice: esempio di codice per manipolare una lista di stringhe nei file listastringhe.c e listastringhe.h. Compilazione separata e file oggetto. Introduzione al makefile: target, prerequisiti, comandi.`

Lezione 16 (15/11/22)

Richiamo sui puntatori generici (void \*). Funzione di libreria qsort. Casting e problematiche connesse. Ancora sul makefile: uso di variabili, variabili automatiche, e regole implicite.

Lezione 17 (17/11/22)

Funzioni static (vedere esempio capitali.c nella lezione 16). Creazione e manipolazione di matrici bidimensionali statiche e dinamiche. Scrittura su file binari con fwrite. Test di primalità in assembler ARM.

Lezione 18 (22/11/22)

Lettura da file binari. Operatori bitwise &, |, ^, <<, >>. Conversione in/da binario usando operatori bitwise. Utilizzo gbbgui per il C.

Lezione 19 (22/11/22)

Utilizzo gdbgui per l'assembler ARM. Implementazione strcmp in assembler. Implementazione quicksort di interi in assembler.

Lezione 20 (24/11/22)

Implementazione funzione strtok() in assembler.
Variabili globali in C: significato keyword static ed extern. Makefile: compilazione condizionale e pattern rules.

Lezione 21 (29/11/22)

Esercitazione Campeggio in Java (su replit): classi Articolo, discussione dei metodi toString, equals, hashCode e loro uso da parte delle collezioni Java.

Lezione 22 (1/12/22)

Quiz sul linguaggio C. Java: type erasure e necessità di definizione del metodo equals(Object o). Esempio di lettura da file di testo: classi FileReader e Scanner. Istruzione try/catch per la gestione delle eccezioni. Definizione di nuove eccezioni: Eccezioni checked e unchecked. istruzioni throw e throws.

I concetti di Java sono stati spiegati svolgendo l'esercizio Campeggio su replit; per vedere il codice svolto a lezione dovete visualizzare la soluzione dell'esercizio (aprite il menu sulla destra della sezione Campeggio).

Lezione 23 (6/12/22)

Rappresentazione di sequenze di oggetti in Java. Interfaccia List, classi LinkedList e ArrayList. Ordinamento di una sequenza: uso di interfaccie Comparable<T> e Comparator<T>, uso di classi anonime e lambda-expression. Rappresentazione di un grafo mediante classe astratta Grafo e classe LogGrafo (cenni). Interfaccia Nodo e classi Arco e Capitale (cenni).

Il materiale relativo alla rappresentazione di grafi si trova nell'esercizio Grafo su replit.

Lezione 24 (24/1/23)

    Introduzione a Python: sintassi, interprete, istruzioni for, while, if\else\elif. Definizione di funzioni. Docstring. Esempi

Codice sorgente: (Python vs C

Lezione 25 (26/1/23)

Definizione di classi in Python: metodi speciali **init**, **eq**, **str**, **lt**, **le**, **hash**. Variabili e metodi statici. Sottoclassi.

Lezione 26 (31/1/23)

Esempio: costruzione classifica leggendo risultati da file Istruzione import. Invocazione di script dalla linea di comando, sys.argv

Lezione 27 (2/2/23)

Tipi int, float, str, list, dict, set. Accesso al file system da uno script python. Librerie os e os.path. Ricerca dei file di dimensione maggiore.

Lezione 28 (3/2/23)

Accesso al file system da uno script python: ricerca file recenti. Ricerca di file duplicati.

Lezione 29 (7/2/23) (1 ora)

Invocazione comandi della shell da python con subprocess.run. Ricerca di file duplicati (fine).

Lezione 29 (7/2/23) (1 ora)

    System calls vs library functions
    Esempi: open/read/write vs fopen/fread/fwrite/fprintf
    Sezioni del system manual (comando man)
    Creazione di processi in C: comando `fork

Lezione 30 (9/2/23)

    esempio prestazioni di write vs fwrite
    Processi e PID dalla linea di comando: ps, kill, &, htop.
    Significato e uso di umask
    Comandi wait e sleep, processi zombie.
    gestione degli errori: xerrori.c e xerrori.h
    Primo esempio di pipe

Documentazione: le pagine man fork(2) wait(2) (il numero tra parentesi indica la sezione del manuale)

Lezione 31 (10/2/23)

Esercizio contaprimi su uso di fork e pipe. Documentazione sulle pipe, pagine: pipe(2) pipe(7) Compitino python.

Lezione 32 (14/2/23)

Comunicazione tra processi mediante named pipe (anche in Python). Comandi mkfifo(1) e mkfifo(3). Lancio di un nuovo eseguibile mediante fork seguito da execl.

Lezione 33 (16/2/23)

Introduzione all'uso della memoria condivisa. con riferimento a shm_overview(7) Uso e significato di shm_open, ftruncate, mmap, munmap, shm_unlink. Esempi uso memoria condivisa.

Lezione 34 (21/2/23)

Introduzione ai semafori. Uso e significato di sem_open, sem_post, sem_wait, sem_unlink. Esempio uso semafori per regolare accesso a una variabile condivisa. Esempio uso semafori per segnalare la terminazione di un compito al processo principale.

Lezione 35 (23/2/23)

Esempio sommaprimi di utilizzo di semafori con nome e memoria condivisa da processi generati da fork + exec.

Lezione 36 (28/2/23)

    Creazione di thread con pthread_create
    Passaggio di parametri ai thread mediante puntatori a struct
    Sincronizzazione mediante semafori unnamed: sem_init, sem_wait, sem_post
    Terminazione di thread: pthread_join

Lezione 37 (2/3/23)

    Definizione e utilizzo di mutex
    Introduzione alla tecnica produttori-consumatori

Nota: potete osservare che il prototipo della funzione pthread_mutex_init contiene il modificatore restrict. Si tratta di un modificatore riferibile ai puntatori che se usato permette al compilatore di generare del codice più efficiente. Potete trovare ulteriori dettagli ed esempi su stack overflow

Lezione 38 (7/3/23)

Esempi uso tecnica produttori consumatori: prodcons.c e divisori

Lezione 39 (9/3/23)

Esercizio in aula su tecnica produttori consumatori: gcd multipli

Lezione 40 (14/3/23)

Introduzione alle condition variables. Esempi per la gestione della memoria condivisa (heap.c), l'emulazione di semafori (zem.c) e la gestine di reader e writer (rw,c).

Lezione 41 (16/3/23)

Utilizzo di condition variables per il controllo di una schema produttori e consumatori.

Introduzione ai segnali. Gestione di segnali attraverso un handler. Utilizzo di sigaction per definire un handler. Uso modificatore volatile su variabile globale. Comando sleep per evitare il busy waiting. Invio di segnali dalla linea di comando con kill.

Lezione 42 (28/3/23)

Maschere di segnali: tipo sigset_t, funzioni sigfillset e sigdelset. Blocco dei segnali durante l'esecuzione di un handler, concetto di segnali pending. Esempi.

Segnali in programmi multithread. Uso di pthread_sigmask per bloccare i segnali di un thread. Utilizzo di un thread dedicato alla gestione dei segnali mediante sigwait.

Differenza tra struct e union in C.

Lezione 43 (30/3/23)

Funzioni MT-safe e async-signal-safe. Invio di segnali fra thread.

Lezione 44 (4/4/23)

Caratteristiche dei segnali realtime. Invio di informazioni con i segnali real time: sigqueue e sigwaitinfo.

Lezione 44 (4/4/23)

Concetto di socket. Problematiche delle comunicazioni in rete. Uso di socket in python: esempio echo-server e echo-client.

Lezione 45 (6/4/23)

Sequenze di bytes in python: tipi bytes vs str vs bytearray. Codifiche utf-8 e utf-16. Funzioni struct.pack e struct.unpack per convertire interi in sequenze di bytes. Endianess e network order. Libreria argparse. Server python per il calcolo dei numeri primi, corrispondente client in python e in C: corrispondenza tra le funzioni della classe socket in python e le system call socket e connect in C. Funzioni htons(), htonl(), ntohl() per la conversione da/per network order.

Lezione 46 (13/4/23)

Threads in Python: il Global Interpreter Lock e i suoi effetti. Creazione e join di thread. Uso di ThreadPoolExecutor e ProcessPoolExecutor, i metodi map e submit. Mutex in Python (classe Lock).

Lezione 47 (18/4/23)

Problematica della realizzazione di server basati su socket in grado di gestire più client contemporaneamente. Esempio di server concorrente Python basato sulla system call select per la gestione di connessioni concorrenti.

Lezione 48 (20/4/23)

Esempio di server concorrente Python basato sull'utilizzo di (un pool di) thread multipli. Descrizione e discussione del progetto d'esame.
