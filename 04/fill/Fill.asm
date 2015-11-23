// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

// Put your code here.
(BLOOP)//black loop
@KBD
D=M 
@WLOOP
D;JEQ
@24575
D=M
@WLOOP
D;JLT
@i
D=M
@SCREEN
D=A+D
A=D
M=-1
@i
M=M+1
@BLOOP
0;JMP

(WLOOP)//white loop
@KBD
D=M
@BLOOP
D;JGT
@i
D=M
@SCREEN
D=A+D
A=D
M=0
@i
M=M-1
@WLOOP
0;JMP
