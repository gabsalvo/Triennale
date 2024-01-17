// moduli combinatori per il calcolo dell'otput e del prossimo stato 
module omega(output out, input [1:0] s, input in); // calcola le uscite (Mealy)
    assign
        out = s[1] * ~s[0] * in;
endmodule

module sigma(output [1:0] s_new, input [1:0] s, input in); // calcolo il nuovo stato interno
    assign
        s_new[0] = in;

    assign
        s_new[1] = ~s[1] * s[0]  + s[1]*s[0]*in;
endmodule


// simulazione automa con stato + circuiti visti sopra
module fsm(output out, input in, input clock);
    reg [1:0] s;
    wire [1:0] snew;
    initial s=2'b11;
      
    // calcola out e il nuovo stato   
    omega w(out, s, in); 
    sigma z(snew, s, in);

    // aggiorna stato 
    always @(posedge clock)
      s = snew;
    
endmodule


// automa di tipo behavioural: usa istruzioni tipo C
// per calcolare output e prossimo stato invece dei circuiti 
// funziona correttamente
// anche se l'input arriva in corrispondenza del posedge
module fsmB(output out, input in, input clock);
  reg [1:0] s;
  reg o;
  
  initial begin
    s=2'b11;     // stato iniziale 
  end
  
  always @(posedge clock) begin
    // calcola output in funzione di in e s
    o = (in==1 && s==2'b10) ? 1 : 0; 
    // calcola nuovo stato in funzione di in e s 
    if(in==0) 
      s =  (s==2'b01 ? 2'b10 : 2'b00);
    else // caso in = 1
      case (s)
        2'b00 : s <= 2'b01;
        2'b10 : s <= 2'b01;
        2'b01 : s <= 2'b11;
        2'b11 : s <= 2'b11;
      endcase
  end // always
  assign out = o;
endmodule



// test automa su sequenza abaababb
module testFSM();
    reg clock;
    reg in;
    wire out;
    fsm myfsm(out, in, clock);
    // equivalente a #2 clock = ~clock (partendo da 0)
    always begin
            #2 clock = 1;
            #2 clock = 0;
    end
    
    initial begin
        $dumpfile("out.vcd");
        $dumpvars;

        // nota importante: l'aggiornamento dello stato avviene
        // al posedge del clock quindi ai secondi della forma 4k+2
        // i nuovi input invece vengono scritti ai secondi della forma
        // 4k+3 per evitare problemi di simultaneità è opportuno 
        // non effettuare nello stesso istante l'aggiornamento dello 
        // stato e dell'input
        clock = 0;  // valore iniziale del clock
        in = 0;     // 0=a primo carattere in input
        #2 in = 1;  // letto: 01 -> ab 
        #4 in = 0;  // letto: 010 -> aba 
        #4 in = 0;  // letto: 0100 -> abaa
        #4 in = 1;  // letto: 01001 -> abaab
        #4 in = 0;  // letto: 010010 -> abaaba
        #4 in = 1;  // letto: 0100101 -> abaabab  finisce per abab quindi out=1
        #4 in = 1;  // letto: 01001011 -> abaababb  out torna a 0
        #4 $finish;
    end
endmodule
