// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/QU02/add/Add.asm

// Adds R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

@0     // load R0
D=M     // stores value of R0 in D (M[0])

@1     // load R1
D=D+M   // adds value of R1 to D (D + M[1])

@2     // load address of R2
M=D     // stores result in R2