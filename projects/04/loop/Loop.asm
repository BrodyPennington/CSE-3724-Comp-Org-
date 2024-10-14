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
    @i        // Load i
    D=M       // D = i
    @R0       // Load R0 (the number of times to loop)
    D=M-D     // D = R0 - i

    @END      // If (R0 - i) <= 0, jump to END
    D;JLE     // Jump if D <= 0

    // Increment i
    @i        // Load i
    M=M+1     // i++

    // Go back to LOOP
    @LOOP     // Jump to the start of the loop
    0;JMP

// Begin END
(END)
    @R1       // Address of R1
    M=-1      // Store -1 in R1

    @END      // Loop infinitely at the end
    0;JMP