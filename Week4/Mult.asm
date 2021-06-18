


@R0
D=M
@ZERO
D;JEQ
@R1
D=M
@ZERO
D;JEQ

@i
M=0    //i=0
@R2
M=0
(LOOP)
@i
D=M
@R1
D=D-M     
@END   
D;JEQ  //if i==R1 goto END
@R2
D=M
@R0
D=D+M
@R2
M=D  //R2=R2+R0
@i
M=M+1
@LOOP
0;JMP


(ZERO)
@R2
M=0
(END)
@END
0;JMP


