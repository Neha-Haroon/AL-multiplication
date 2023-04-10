dosseg
; ------------- MACRO START	
; ------------- MACRO END

.model small
.stack 100h
.data
; ------------- DATA / VARIABLES START

; ------------- DATA / VARIABLES END
.code
main proc	
; ------------- CODE

	;mov ax,@data
	;mov ds,ax
	
mov al,2	; al = 5
mov bl,3	; bl = 9

mul bl		; multiply
AAM

mov ch,ah	; ch = ah
mov cl,al	; cl = al

mov dl,ch	
add dl,48	; dl += 48


mov ah,2
int 21h

mov dl,cl	; dl = cl
add dl,48	; dl += 48

mov ah,2
int 21h
	mov ah,4ch
	int 21h
; ------------- CODE END
main endp	
	
; ------------- PROC START
	
; ------------- PROC END
end main
