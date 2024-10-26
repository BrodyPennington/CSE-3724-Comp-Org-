// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

    // load R2
    @2
    // set to 0
    M=0
    
    // load R0
    @0
    // D=R0
    D=M
    // load END
    @END
    //  if R0=0, jump to end
    D;JEQ

    // load R1
    @1
    // D=R1
    D=M
    // load END
    @END
    // if R1=0, jump to end
    D;JEQ

(LOOP)

    // select R0
    @0
    // D=R0
    D=M
    // load END
    @END
    // when R0=0, jump to end
    D;JEQ

    // load R1
    @1
    // D=R1
    D=M
    // load R2
    @2
    // R2=R2+R1
    M=D+M

    // load R0
    @0
    // R0=R0-1
    M=M-1
    
    // load LOOP
    @LOOP
    // unconditional jump to beginning of loop
    0;JMP

(END)
    // load END
    @END
    // stay at end of program
    0;JMP

