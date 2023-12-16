# Laboratorio III

## Thread e Processi

- Un thread (light weight process) è un flusso di esecuzione all'interno di un processo.
- Un processo rappresenta un vero e proprio programma in esecuzione.
  Possiamo usare il termine multitasking per rifererici a entrambi:
- a livello di processo è controllato esclusivamente dal sistema operativo
- a livello di thread è controllato almeno in parte dal programmatore.

I thread, inoltre condividono lo stesso spazio degli indirizzi e risultano meno costosi per quanto riguarda il context switch. Possono essere eseguiti nei seguenti modi:

- singole core: multiplexing, interleaving (meccanismi di time saring)
- multicore: più flussi di esecuzione eseguiti in parallelo, simultaneità di esecuzioine.

Il multithreafing avviene quando un programma sfrutta più thread per svolgere le operazioni e ha molti vantagi:

- miglior utilizzazione delle risorse
- miglior performanc, dividere l'app in task e mandarle in aprallelo.

Per quanto riguarda la programmazione di rete, ci occuperemo principalmente di applicazioni client-server dove magari avremo più client serviti simultaneamente quindi un determinato client non dovrà aspettare.
Il throughput dell'applicazione può essere incrementato se client diversi sono serviti da server diversi, ma solo fino a un certo punto.
Oltre quel limite i thread iniziano a competere con la CPU e il costo del content switch supera il benefinicio del multithreading.
Si utilizza quindi il meccanismo di threadpooling.

## Java

Quando si manda in esecuzione un programma la JVM crea un thread che invoca il metodo main del programma quindi c'è sempre almeno un thread.

Esistonon due modi per creare ed attivare esplicitamente un thread:

- implements Runnable
- Extends Thread

### Implements Runnable

Bisogna prima definire un task, poi bisogna creare un oggetto thread e passargli il task che contiene il codice da eseguire ed infine attivare il thread con il metodo `start()`.

Per definire un task bisogna definire una classe che implementi l'interfaccia Runnable e creare un'istanta R di questa classe (da passare al thread).

`public class ThreadRunnable {
	public static class MyRunnable implements Runnable {
		public void run() {
			System.out.println("My Runnable running ");
			System.out.println("My Runnable finished");
		}
	}
	public static void main (String[] args) {
		Thread thread = new Thread(new MyRunnable());
		thread.start();
	}
}`

L'interfaccia Runnable appartiene al package java.language e contiene solo la segnatura del metodo `void run()` che deve essere implementato.

Un'istanza della classe che implementa Runnable è un task, ovvero un frammento di codice che può essere eseguito in un thread. La creazione del task non implica la creazione di un thread che lo esegua e lo stesso task può essere eseguito da più thread.

Si può definire un task anche attraverso una classe anomina nel seguente modo:

`public class RunnableAnonymous {
   public static void main(String[] args) {
    Runnable runnable = new Runnable() {
     public void run() {
       System.out.println("MyRunnable running");
       System.out.println("MyRunnable finished");
       }
     };
     Thread thread = new Thread(runnable);
     thread.start();
     }
  }`

### Extends Thread
