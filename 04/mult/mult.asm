// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
//int main() {
//    int R0 = 3;
//    int R1 = 5;
//    int R2 = 0;
//    
//    while (R0 > 0) {    loop
//      R2 = R2 + R1;
//      R0 = R0 - 1;
//      printf("R0=%d R1=%d R2=%d\n", R0, R1, R2);
//    }
//    
//    printf("R2=%d\n", R2);
//}
    @2
    M=0
    

(LOOP)
    @0
    D=M
    @END
    D;JLE

    @1
    D=M
    @2
    M=D+M
    @0
    M=M-1
    @LOOP
    0;JMP
    
    @END
(END)
    @END
    0;JMP