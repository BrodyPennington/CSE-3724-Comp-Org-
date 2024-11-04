// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/QU02/double/Double.asm

// Doubles R0 and stores the result in R1.
// (R0, R1 refer to RAM[0] and RAM[1] respectively.)

// Put your code here.


// loads R0
@0     
// stores R0 into D register
D=M 
// doubles the value
D=D+M

// loads R1
@1
// stores doubled value in R1
M=D