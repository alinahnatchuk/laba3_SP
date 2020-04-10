;Y=(A+B)*(C-D)
.model small
.stack 100h
.data

A DB ?
B DB ?
C DB ?
D DB ?
Y DW ?
.code
start:
mov ax,@data 
mov ds,ax    

mov A,3      
mov B,2      
mov C,10      
mov D,6      

MOV AL,A     ;7 AL=A=2
MOV CL,B     ;8 CL=B=6
ADD AL,CL    ;9 A+B=3+5=8

MOV AH,0

MOV CL,C     ;10 CL=C=4
ADD CL,3     ;11 CL=3+C=7
SUB CL,D     ;12 CL-D=7-5=2
DIV CL       ;13 AX/CL=8/2
MOV Y,AX

      
MOV AH,4CH
INT 21H
END start 