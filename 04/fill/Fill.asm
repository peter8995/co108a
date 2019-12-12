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
//addr=SCREEN
//n=8192
//if(kbd!=0){
//    for(i=0;i<n;i++){
//        addr[i]=-1
//    }
//}
//else{
//    addr[i]=0
//}
(FOREVER)    
    //addr=SCREEN
    @SCREEN
    D=A
    @addr
    M=D
    //n=8192
    @8192
    D=A
    @n
    M=D

    @KBD
    D=M
    @FILL
    D;JGT
    @UNFILL
    0;JMP

(FILL)
    @i
    M=0
    (FILLLOOP)
    @i
    D=M
    @n
    D=D-M
    @FOREVER
    D;JEQ
    @addr
    D=M
    @i
    A=D+M
    M=-1
    @i
    M=M+1
    @FILLLOOP
    0;JMP
(UNFILL)
    @i
    M=0
    (UNFILLLOOP)
    @i
    D=M
    @n
    D=D-M
    @FOREVER
    D;JEQ
    @addr
    D=M
    @i
    A=D+M
    M=0
    @i
    M=M+1
    @UNFILLLOOP
    0;JMP