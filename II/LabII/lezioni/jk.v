// circuito sconosciuto
module sconosciuto(output [1:0] out, input [1:0]in);

  wire w1, w0, v1, v0;
 
  and(w0, in[0], v0);
  and(w1, in[1], v1);
  
  nor(v0,w0,v1);
  nor(v1,w1,v0);
   
  assign out[0] = v0;
  assign out[1] = v1;

endmodule


// versione semplificata del precedente
// purtroppo non funziona correttamente in verilog
// che produce sempre output invalidi "x"
module jk_latch_xx(output q, qnot, input j, k);

  wire w1, w0;
 
  and(w0, k, q);
  and(w1, j, qnot);
  
  nor(q,w0,qnot);
  nor(qnot,w1,q);
     
endmodule


// per realizzare un modulo che simula un jk-latch cominciamo scrivendo una
// tabella che implementa la logica del jk latch
primitive jktable(output newq, input j, input k, input q);
  table
    0 0 0 : 0; // 00 -> no change
    0 0 1 : 1;
    0 1 ? : 0; // 01 ->reset
    1 0 ? : 1; // 10 ->set
    1 1 0 : 1; // 11 ->toggle
    1 1 1 : 0;
  endtable
endprimitive


// modulo jk-latch funzionanante
// utilizza un registro per mantenere lo stato
// quando cambiano gli input aggiorno anche lo stato 
module jk_latch(output q, q_not, input j, k);
  reg qold;
  
  // calcolo il nuovo stato in funzione ddel vecchio e j e k
  jktable mod(q,j,k,qold);
  assign  q_not = ~ q;
    
  // salvo nel registro il nuovo stato  
  always @(j,k)
  begin
    qold = q;
  end
  
endmodule


// modulo che realizza un jk flip-flop 
// in cui l'output viene cambiato sul posedge
module jkff(output q, q_not, input j, k, clock);
  reg qold;
  wire w;
  
  // calcolo il nuovo stato in funzione del vecchio e j e k
  jktable mod(w,j,k,qold);
  assign  q_not = ~ q;
  
  initial begin
    qold = 1'b1;  
  end
  
  // al posedge trasferisco l'output attuale di jktable nel registro
  // L'output del circuito è sempre il contenuto del registro
  always @(posedge clock)
  begin
    qold = w;
  end
  assign q = qold;
  assign q_not  = ~qold;
  
endmodule


// versine di tipo behavioural di jkff
// più semplice in quanto ad ogni posedge mi limito ad
// aggiornare lo stato in funzinoe di J e K
module jkffb(output qx, qxn, input j,k, clock);
  reg q;
  wire [1:0]in = {k,j};
  
  initial begin
    q=1;  
  end
  always @(posedge clock)
    case (in)
      2'b00 : q <= q; 
      2'b01 : q <= 1; 
      2'b10 : q <= 0;
      2'b11 : q <= ~q;
    endcase
  // l'output consiste nel contenuto dello stato e della sua negazione  
  assign qx = q;
  assign qxn = ~q;
endmodule



// modulo per il test di jk_latck e jkff
module test;

  reg j, k;          // input (in registri così li possiamo cambiare)
  wire q, q_not;     // output del circuito
  reg clock=0;       // usato solo dal flip-flop

  // scommentare per testate il jk_latch
  jk_latch mod(q,q_not,j,k);
  // scommentare per testatere jkff
  // jkff mod(q,q_not,j,k,clock);

  always
   #1 clock = ~clock;

  initial begin
    // for waveform analysis
    $dumpfile("out.vcd");
    $dumpvars;
   
   
    // case 1 (latch w/o state)
    j=0; k=0; #2
    $display("j=%b, k=%b ==> q=%b, q_not=%b # should be initial q value",
              j, k, q, q_not); // nota: se stampo senza pausa q e q_not non sono aggiornati

    // case 2 (reset)
    j=0; k=1; #2
    $display("j=%b, k=%b ==> q=%b, q_not=%b # reset, so q=0",
              j, k, q, q_not);

    // case 3 (set)
    j=1; k=0; #2
    $display("j=%b, k=%b ==> q=%b, q_not=%b # set, so q=1",
              j, k, q, q_not);

    // case 4 (latch with state)
    j=0; k=0; #2
    $display("j=%b, k=%b ==> q=%b, q_not=%b # latch, so q=q (keep state)",
              j, k, q, q_not);

    // case 5 (toogle)
    j=1; k=1; #2
    $display("j=%b, k=%b ==> q=%b, q_not=%b # toggle q=~q",
              j, k, q, q_not);

    // case 6 (latch) 
    j=0; k=0; #2
    $display("j=%b, k=%b ==> q=%b, q_not=%b # latch, so q=q (keep state)",
              j, k, q, q_not);
              
    // case 7 (toggle) 
    j=1; k=1; #8
    $display("j=%b, k=%b ==> q=%b, q_not=%b # toggle q=~q",
              j, k, q, q_not);          
    $finish;

  end

endmodule


