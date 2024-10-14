// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/QU02/loop/Loop.asm

// Loops R0 times and stores -1 in R1 upon completion.
// (R0, R1 refer to RAM[0] and RAM[1] respectively.)
// (LOOP and END refer to labels to be jumped to.)
// (i refers to the variable used for the counter.)

// Basic Direction:
// Initialize the i counter variable outside of the loop and set it to 0.
// (This is to account for repeated runs via the CPUEmulator. It's a safety
// net for reseting the memory value at your variable.)

// Begin LOOP

//   Store value in i to D register to use for later
//   Store the difference of R0 and i (R0 - i)

//   CONDITIONAL STATEMENT
//   if (R0 - i) <= 0 goto END

//   else (this stays in loop after the CONDITIONAL JUMP)
//   Increment i

//   goto LOOP (Restarts LOOP)

// End LOOP 

// Begin END 

//  Store value of i in D register
//  Store value in D register in R1

// End END

// Put your code here.

// This program loops R0 times and stores -1 in R1 upon completion.

// Initialize i (counter variable) to 0
@i            // Address of i
M=0           // Set i to 0

// Begin LOOP
(LOOP)
// load add of i
@i      
// store i in D reg
D=M     
// load R0
@0      
// D = R0 - i
D=M-D   

// load add of END
@END    
// jumps to end if the difference of R0 and i is <= 0, which means the loop is complete
D;JLE  

// load add of i
@i
// store i in D reg
D=M  
// inc i by 1      
M=M+1      

// loads LOOP add
@LOOP
// unconditional jump, restarting the loop  
0;JMP


// Begin END
(END)
// load add of i
@i 
// store i in D reg      
D=M 
// load R1      
@R1
// set R1 to D reg value 
M=D       
