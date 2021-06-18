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

(OUTOUT)

@SCREEN
D=A
@addr
M=D   //addr = 16384

@8192
D=A
@n
M=D   //n=8191

@i
M=0
@KBD
D=M
@LOOP
D;JNE   //if KBD!==0 goto LOOP

@KBD
D=M
@OUT
D;JEQ   //if KBD==0 goto OUT


@OUTOUT
0;JMP

(OUT)
@KBD
D=M
@LOOP
D;JNE   //if KBD!==0 goto LOOP

@i
D=M
@n
D=D-M
@OUTOUT
D;JEQ  //if i=n goto OUTOUT

@addr
A=M
M=0   //RAM[addr] = 0000000000000

@i
M=M+1 //i=i+1
@1
D=A
@addr
M=M+D  //addr = addr+1


@OUT
0;JMP



(LOOP)

@KBD
D=M
@OUT
D;JEQ   //if KBD==0 goto OUT

@i
D=M
@n
D=D-M
@OUTOUT
D;JEQ  //if i=n goto OUTOUT

@addr
A=M
M=-1   //RAM[addr] = 1111111111

@i
M=M+1 //i=i+1
@1
D=A
@addr
M=M+D  //addr = addr+1
@LOOP
0;JMP






