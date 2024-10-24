// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/QU02/neg/Neg.asm

// Negates R0 and stores the result in R1.
// (R0, R1 refer to RAM[0] and RAM[1] respectively.)

// Put your code here.


// load R0
@0
// negate the value
D=-M

// load R1
@1
// store negated value in R1
M=D