// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

// the number of 16 bit pixels needed to cover the screen
(INIT)
    // load 8192 constant (total number of pixels in the screen)
    @8192
    // D = 8192
    D=A
    // load index
    @i  
    // set index variable to 8192      
    M=D

(LOOP)
    // load index
    @i
    // decrement counter
    M=M-1
    // store new counter value
    D=M
    // load Initial Address
    @INIT
    // if counter <= 0, jump back to initial ^
    D;JLT

    // load keyboard mem map
    @KBD 
    // store keyboard input
    D=M

    // load white instruction address
    @WHITE
    // if keyboard = 0 (no input), screen is white
    D;JEQ

    // else

    // load black instruction address
    @BLACK 
    // unconditional jump to black routine
    0;JMP

(BLACK)
    // screen mem address
    @SCREEN 
    // D = screen address
    D=A 
    // load index
    @i 
    // current 16-bit pixel address (start position + offset)
    A=D+M 
    // set pixel black
    M=-1
    // load loop
    @LOOP
    // jump back to loop
    0;JMP

(WHITE)
    // screen mem address
    @SCREEN
    // D = screen address
    D=A    
    // load index
    @i 
    // current 16-bit pixel address (start position + offset)
    A=D+M 
    // set pixel white
    M=0
    // load loop
    @LOOP
    // jump back to loop
    0;JMP
