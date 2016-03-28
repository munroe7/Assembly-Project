;Made by Sam Munroe and Kevin Caulfield
;Class: Assembly Language
;Professor: John Russo
;Date: 12/10/14
;Purpose: We made a memory game in Assembly. This is based off the generic "memory card flip game".

INCLUDE Irvine32.inc
.data

blank BYTE "  X  ",0
solved BYTE "  -  ",0
pointer SBYTE 16
dir BYTE ?
wdir BYTE "w",0
adir BYTE "a",0
sdir BYTE "s",0
ddir BYTE "d",0
accept BYTE " ",0
currentCard BYTE 5

cards BYTE "  a  ",0,"  d  ",0,"  c  ",0,"  f  ",0,"  w  ",0,"  u  ",0,"  v  ",0,"  p  ",0,"  c  ",0,"  a  ",0,"  f  ",0,"  d  ",0,"  w  ",0,"  p  ",0,"  u  ",0,"  v  ",0
matches BYTE 1,2,3,4,5,6,7,8,3,1,4,2,5,8,6,7
cardval BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

firstpick BYTE 0
secondpick BYTE 0
firstloc BYTE 0
secondloc BYTE 0

winner BYTE 	"     __   __                   __        __  _           ",0ah,        
				"     \ \ / /   ___    _   _    \ \      / / (_)  _ __    ",0ah,   
				"      \ V /   / _ \  | | | |    \ \ /\ / /  | | | '_ \   ",0ah, 
				"       | |   | (_) | | |_| |     \ V  V /   | | | | | |  ",0ah, 
				"       |_|    \___/   \__,_|      \_/\_/    |_| |_| |_|  ",0ah,0 

.code
main PROC
;Print Gameboard
PRINTBOARD:
	call clrscr
	mov ecx, 16
	PRINTGB:
		 mov edx, OFFSET blank
		.IF bh == 1 && pointer == 16 && cl == 16
			mov edx, OFFSET cards
			.IF firstpick == 0
				mov bh,matches
				mov firstpick,bh
				mov bh,16
				mov firstloc, bh	
			.ELSE 
				mov bl,matches
				mov secondpick, bl
				mov bl,16
				mov secondloc, bl
			.ENDIF
			mov bh,0
		.ENDIF

		.IF bh == 1 && pointer == 15 && cl == 15
			mov edx, OFFSET cards+6
			.IF firstpick == 0
				mov bh,matches[1]
				mov firstpick,bh	
				mov bh,15
				mov firstloc, bh
			.ELSE 
				mov bl,matches[1]
				mov secondpick, bl
				mov bl,15
				mov secondloc, bl
			.ENDIF
			mov bh,0
		.ENDIF

		.IF bh == 1 && pointer == 14 && cl == 14
			mov edx, OFFSET cards+12
			.IF firstpick == 0
				mov bh,matches[2]
				mov firstpick,bh
				mov bh,14
				mov firstloc, bh
			.ELSE 
				mov bl,matches[2]
				mov secondpick, bl
				mov bl,14
				mov secondloc, bl
			.ENDIF
			mov bh,0
		.ENDIF

		.IF bh == 1 && pointer == 13 && cl == 13
			mov edx, OFFSET cards+18
			.IF firstpick == 0
				mov bh,matches[3]
				mov firstpick,bh
				mov bh,13
				mov firstloc, bh
			.ELSE 
				mov bl,matches[3]
				mov secondpick, bl
				mov bl,13
				mov secondloc, bl
			.ENDIF
			mov bh,0
		.ENDIF

		.IF bh == 1 && pointer == 12 && cl == 12
			mov edx, OFFSET cards+24
			.IF firstpick == 0
				mov bh,matches[4]
				mov firstpick,bh
				mov bh,12
				mov firstloc, bh	
			.ELSE 
				mov bl,matches[4]
				mov secondpick, bl
				mov bl,12
				mov secondloc, bl
			.ENDIF
			mov bh,0
		.ENDIF

		.IF bh == 1 && pointer == 11 && cl == 11
			mov edx, OFFSET cards+30
			.IF firstpick == 0
				mov bh,matches[5]
				mov firstpick,bh
				mov bh,11
				mov firstloc, bh	
			.ELSE 
				mov bl,matches[5]
				mov secondpick, bl
				mov bl,11
				mov secondloc, bl
			.ENDIF
			mov bh,0
		.ENDIF

		.IF bh == 1 && pointer == 10 && cl == 10
			mov edx, OFFSET cards+36
			.IF firstpick == 0
				mov bh,matches[6]
				mov firstpick, bh
				mov bh,10
				mov firstloc, bh
			.ELSE 
				mov bl,matches[6]
				mov secondpick,bl
				mov bl,10
				mov secondloc, bl
			.ENDIF
			mov bh, 0
		.ENDIF

		.IF bh == 1 && pointer == 9 && cl == 9
			mov edx, OFFSET cards+42
			.IF firstpick == 0
				mov bh,matches[7]
				mov firstpick,bh
				mov bh,9
				mov firstloc, bh	
			.ELSE 
				mov bl,matches[7]
				mov secondpick, bl
				mov bl,9
				mov secondloc, bl
			.ENDIF
			mov bh,0
		.ENDIF

		.IF bh == 1 && pointer == 8 && cl == 8
			mov edx, OFFSET cards+48
			
			.IF firstpick == 0
				mov bh,matches[8]
				mov firstpick, bh
				mov bh,8
				mov firstloc, bh	
			.ELSE 
				mov bl,matches[8]
				mov secondpick,bl
				mov bl,8
				mov secondloc, bl
			.ENDIF
			mov bh,0
		.ENDIF

		.IF bh == 1 && pointer == 7 && cl == 7
			mov edx, OFFSET cards+54
			
			.IF firstpick == 0
				mov bh,matches[9]
				mov firstpick, bh
				mov bh,7
				mov firstloc, bh	
			.ELSE 
				mov bl,matches[9]
				mov secondpick,bl
				mov bl,7
				mov secondloc,bl
				mov bl,7
				mov secondloc, bl
			.ENDIF
			mov bh,0
		.ENDIF

		.IF bh == 1 && pointer == 6 && cl == 6
			mov edx, OFFSET cards+60
			.IF firstpick == 0
				mov bh,matches[10]
				mov firstpick, bh
				mov bh,6
				mov firstloc, bh	
			.ELSE 
				mov bl,matches[10]
				mov secondpick,bl
				mov bl,6
				mov secondloc, bl
			.ENDIF
			mov bh,0
		.ENDIF

		.IF bh == 1 && pointer == 5 && cl == 5
			mov edx, OFFSET cards+66
			.IF firstpick == 0
				mov bh,matches[11]
				mov firstpick, bh
				mov bh,5
				mov firstloc, bh	
			.ELSE 
				mov bl,matches[11]
				mov secondpick,bl
				mov bl,5
				mov secondloc, bl
			.ENDIF
			mov bh,0
		.ENDIF

		.IF bh == 1 && pointer == 4 && cl == 4
			mov edx, OFFSET cards+72
			.IF firstpick == 0
				mov bh,matches[12]
				mov firstpick, bh
				mov bh,4
				mov firstloc, bh	
			.ELSE 
				mov bl,matches[12]
				mov secondpick,bl
				mov bl,4
				mov secondloc, bl
			.ENDIF
			mov bh,0
		.ENDIF

		.IF bh == 1 && pointer == 3 && cl == 3
			mov edx, OFFSET cards+78
			.IF firstpick == 0
				mov bh,matches[13]
				mov firstpick, bh
				mov bh,3
				mov firstloc, bh	
			.ELSE 
				mov bl,matches[13]
				mov secondpick,bl
				mov bl,3
				mov secondloc, bl
			.ENDIF
			mov bh,0
		.ENDIF

		.IF bh == 1 && pointer == 2 && cl == 2
			mov edx, OFFSET cards+84
			.IF firstpick == 0
				mov bh,matches[14]
				mov firstpick, bh
				mov bh,2
				mov firstloc, bh	
			.ELSE 
				mov bl,matches[14]
				mov secondpick,bl
				mov bl,2
				mov secondloc, bl
			.ENDIF
			mov bh,0
		.ENDIF

		.IF bh == 1 && pointer == 1 && cl == 1
			mov edx, OFFSET cards+90
			.IF firstpick == 0
				mov bh,matches[15]
				mov firstpick, bh
				mov bh,1
				mov firstloc, bh	
			.ELSE 
				mov bl,matches[15]
				mov secondpick,bl
				mov bl,1
				mov secondloc, bl
			.ENDIF
			mov bh,0
		.ENDIF

		.IF cardval[ecx-1] == 1
			mov edx, OFFSET solved
		.ENDIF

		.IF cl == pointer
			mov eax, yellow + (red*16)
			call SetTextColor
		.ENDIF
		call WriteString
		.IF ecx == 13 || ecx == 9 || ecx == 5
			call Crlf
			call Crlf
		.ENDIF
		mov eax, white + (black*16)
		call SetTextColor
		.IF secondpick != 0
				mov al, firstpick
				mov ah, secondpick
				cmp al, ah
				je MATCHFOUND
				mov firstpick, 0
				mov secondpick, 0
		.ENDIF
		.IF ecx > 1
			dec ecx
			jmp PRINTGB
		.ENDIF
		dec ecx
		
		jmp PLAY

MATCHFOUND:
	mov ebx,0
	mov eax,0
	mov ecx,0
	mov edx,0
	mov firstpick, 0
	mov secondpick,0
	.IF firstloc == 16
		mov cardval[15], 1
	.ENDIF
	.IF secondloc == 7
		mov cardval[6], 1
	.ENDIF

	.IF firstloc == 15
		mov cardval[14], 1
	.ENDIF
	.IF secondloc == 5
		mov cardval[4], 1
	.ENDIF

	.IF firstloc == 14
		mov cardval[13], 1
	.ENDIF
	.IF secondloc == 8
		mov cardval[7], 1
	.ENDIF

	.IF firstloc == 13
		mov cardval[12], 1
	.ENDIF
	.IF secondloc == 6
		mov cardval[5], 1
	.ENDIF

	.IF firstloc == 12
		mov cardval[11], 1
	.ENDIF
	.IF secondloc == 4
		mov cardval[3], 1
	.ENDIF

	.IF firstloc == 11
		mov cardval[10], 1
	.ENDIF
	.IF secondloc == 2
		mov cardval[1], 1
	.ENDIF

	.IF firstloc == 10
		mov cardval[9], 1
	.ENDIF
	.IF secondloc == 1
		mov cardval[0], 1
	.ENDIF

	.IF firstloc == 9
		mov cardval[8], 1
	.ENDIF
	.IF secondloc == 3
		mov cardval[2], 1
	.ENDIF



	.IF firstloc == 7
		mov cardval[15], 1
	.ENDIF
	.IF secondloc == 16
		mov cardval[6], 1
	.ENDIF

	.IF firstloc == 5
		mov cardval[14], 1
	.ENDIF
	.IF secondloc == 15
		mov cardval[4], 1
	.ENDIF

	.IF firstloc == 8
		mov cardval[13], 1
	.ENDIF
	.IF secondloc == 14
		mov cardval[7], 1
	.ENDIF

	.IF firstloc == 6
		mov cardval[12], 1
	.ENDIF
	.IF secondloc == 13
		mov cardval[5], 1
	.ENDIF

	.IF firstloc == 4
		mov cardval[11], 1
	.ENDIF
	.IF secondloc == 12
		mov cardval[3], 1
	.ENDIF

	.IF firstloc == 2
		mov cardval[10], 1
	.ENDIF
	.IF secondloc == 11
		mov cardval[1], 1
	.ENDIF

	.IF firstloc == 1
		mov cardval[9], 1
	.ENDIF
	.IF secondloc == 10
		mov cardval[0], 1
	.ENDIF

	.IF firstloc == 3
		mov cardval[8], 1
	.ENDIF
	.IF secondloc == 9
		mov cardval[2], 1
	.ENDIF
	jmp CHKWIN

CHKWIN:
	mov ecx, 16
	CHECK:
		mov ebx, ecx
		cmp cardval[ebx-1],0
		je PRINTBOARD
		loop CHECK
	jmp WIN
	
WPRESSED:
	add pointer,4
	.IF pointer > 16
		sub pointer,16
	.ENDIF
	jmp PRINTBOARD
APRESSED:
	inc pointer
	.IF pointer > 16
		mov pointer,1
	.ENDIF
	jmp PRINTBOARD
SPRESSED:
	sub pointer,4
	.IF pointer < 1
		mov al,16
		neg pointer
		sub al,pointer
		mov pointer,al
	.ENDIF
	jmp PRINTBOARD
DPRESSED:
	dec pointer
	.IF pointer < 1
		mov pointer,16
	.ENDIF
	jmp PRINTBOARD
ACCEPTPRESSED:
	mov bl,pointer
	mov bh,1
	jmp PRINTBOARD
	
PLAY:
	call readchar
	mov dir,al

	mov dl, dir
	mov al, wdir
	cmp dl,al
	je WPRESSED

	mov dl, dir
	mov al, adir
	cmp dl,al
	je APRESSED

	mov dl, dir
	mov al, sdir
	cmp dl,al
	je SPRESSED

	mov dl, dir
	mov al, ddir
	cmp dl,al
	je DPRESSED

	mov dl, dir
	mov al, accept
	cmp dl,al
	je ACCEPTPRESSED

	jmp PLAY

WIN:
call clrscr
	mov edx, OFFSET winner
	mov eax, green (yellow*16)
	call SetTextColor
	call WriteString
	nop
	exit
main ENDP

END main
















