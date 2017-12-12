; Llorada, Edison
; Malaki, Earl Timothy
; CMSC 131
; Final Project
; SQRD

TITLE SQRD (.EXE MODEL)
;--------------------------------------
STACKSEG SEGMENT PARA 'Stack'

STACKSEG ENDS
;--------------------------------------
DATASEG SEGMENT PARA 'Data'

	; MAIN SCREEN UI
	;----------------
	; Button border coords:
	; HOR = 26 <-> 51
    ; VER = 16 <-> 18 | 21 <-> 23

	MAIN_SCREEN_UI 		DB "                                                                                "
						DB "                                                                                "
    					DB "                   _________________  __________ ________                       "
						DB "                  /   _____/\_____  \ \______   \\______ \                      "
						DB "                  \_____  \  /  / \  \ |       _/ |    |  \                     "
						DB "                  /        \/   \_/.  \|    |   \ |    `   \                    "
						DB "                 /_______  /\_____\ \_/|____|_  //_______  /                    "
						DB "                         \/        \__>       \/         \/                     "
    					DB "                                                                                "
    					DB "                                                                                "
    					DB "                         .-------------------------.                            "
    					DB "                         |        NEW GAME         |                            "
    					DB "                         '-------------------------'                            "
    					DB "                                                                                "
    					DB "                         .-------------------------.                            "
    					DB "                         |       HOW TO PLAY       |                            "
    					DB "                         '-------------------------'                            "
    					DB "                                                                                "
    					DB "                         .-------------------------.                            "
    					DB "                         |          EXIT           |                            "
    					DB "                         '-------------------------'                            "
    					DB "                                                                                "
    					DB "                                                                                "
    					DB "                                                                                ", '$'

   	; coordinates for button borders
   	; to check click boundary
   	; Format:
   	; 	- hex position with respect to screen size (80,25)
   	; 	-	 	up, down, left, right
   	; 	- ex:	16, 18, 26, 51

   	; Array Format:
   	; 	- first byte number of buttons
   	; 	- following bytes, coordinates of borders	
   	BTNS_MAIN_SCREEN	DW 2
   						DW 15,17,26,50
   						DW 20,23,26,50

    BTN_NEWGAME		DW 10,12,26,50
    BTN_HOWTO		DW 14,16,26,50
    BTN_QUIT		DW 18,20,26,50
    ;----------------
    

    ; HOW TO SCREEN UI
	;----------------
	; Button border coords:
	; HOR = 1AH <-> 33H
    ; VER = 16H <-> 17H

	HOWTO_SCREEN_UI 	DB "                                                                                "
						DB "                                                                                "
    					DB "                   _________________  __________ ________                       "
						DB "                  /   _____/\_____  \ \______   \\______ \                      "
						DB "                  \_____  \  /  / \  \ |       _/ |    |  \                     "
						DB "                  /        \/   \_/.  \|    |   \ |    `   \                    "
						DB "                 /_______  /\_____\ \_/|____|_  //_______  /                    "
						DB "                         \/        \__>       \/         \/                     "
    					DB "                                                                                "
						DB "                          _________________________                             "
    					DB "                                                                                "
    					DB "                                 HOW TO PLAY                                    "
    					DB "                          _________________________                             "
    					DB "                                                                                "    					
    					DB "                                                                                "
    					DB "      Player 1 and Player 2 will take turns on claiming dots on the grid.       "
    					DB "                   P1's dots are Blue and P2's dots are Red.                    "
    					DB "                  The first player to claim four dots forming                   "
						DB "                        a square will be hailed winner.                         "
    					DB "                                                                                "
    					DB "                                                                                "						
    					DB "                         .-------------------------.                            "
    					DB "                         |      BACK TO MAIN       |                            "
    					DB "                         '-------------------------'                            ", '$'

    BTN_BACKTOMAIN_FROMHOWTO		DW 21,23,26,50
    ;----------------
	
	GAMEPLAY_SCREEN_UI		DB "                                                                                "
							DB "                   _________________  __________ ________                       "
						    DB "                  /   _____/\_____  \ \______   \\______ \                      "
						    DB "                  \_____  \  /  / \  \ |       _/ |    |  \                     "
						    DB "                  /        \/   \_/.  \|    |   \ |    `   \                    "
						    DB "                 /_______  /\_____\ \_/|____|_  //_______  /                    "
						    DB "                         \/        \__>       \/         \/                     "
						    DB "                                                                                "
						    DB "                                                                                "
    						DB "                        _____________________________                           "
    						DB "                       |    |    |    |    |    |    |                          "
    						DB "                       |____|____|____|____|____|____|                          "
    						DB "                       |    |    |    |    |    |    |                          "
    						DB "   __________  ____    |____|____|____|____|____|____|   ________________       "
    						DB "   \______   \/_   |   |    |    |    |    |    |    |   \______   \___  \      "
    						DB "    |     ___/ |   |   |____|____|____|____|____|____|    |     ___//  __/      "
    						DB "    |    |     |   |   |    |    |    |    |    |    |    |    |   /     \      "
    						DB "    |____|     |___|   |____|____|____|____|____|____|    |____|   \______\     "
    						DB "                       |    |    |    |    |    |    |                          "
    						DB "                       |____|____|____|____|____|____|                          "
    						DB "                       |    |    |    |    |    |    |                          "
    						DB "                       |____|____|____|____|____|____|                          "
    						DB "                                                                                "
    						DB "                         ____________   ____________                            "
    						DB "                        |   RETURN   | |  RESTART!  |                          ", '$'

   	GP_SCREEN_P1			DB "__________  ____ "
							DB "\______   \/_   |"
							DB " |     ___/ |   |"
							DB " |    |     |   |"
							DB " |____|     |___|", '$'

	GP_SCREEN_P1_COORD		DW 14,2

	GP_SCREEN_P2			DB "________________  "
							DB "\______   \___  \ "
							DB " |     ___//  __/ " 
							DB " |    |   /     \ " 
							DB " |____|   \______\", '$'

	GP_SCREEN_P2_COORD		DW 57,2
	                  
    ; ----------------------
    MOUSEX				DW 0H
    MOUSEY				DW 0H
    MOUSECLICK 			DW 0H            
    MOUSEPOS 			DW 0H

    CONST_SCREEN_MAINMENU 	DB "MAIN"
    CONST_SCREEN_HOWTO 		DB "HOWT"
    CONST_SCREEN_GAMEPLAY 	DB "GMPL"
    CURRENT_SCREEN			DB 4 DUP(' ')

    CONST_STATE_PLAYING		DB "PLAY"
    CONST_STATE_OVER		DB "OVER"
	CURRENT_STATE 			DB 4 DUP(' '), '$'

	CONST_PLAYER_1			DB "P1"
	CONST_PLAYER_2			DB "P2"
    CURRENT_PLAYER 			DB 2 DUP (' '), '$'

    CONST_BOOLEAN_TRUE		DB "TRUE"
    CONST_BOOLEAN_FALSE		DB "FALSE"
    
    cher db "cheret $"

    NUM_LOC DB 10 DUP(' '),'$'
    TEMP_NUMBER				DW ?
    BOOLEAN_FLAG DB 'F'
    CONST_NEWLINE 			DB 10,13,'$'

    ; cell represents a grid entry by a player
    CELL STRUC
    	X 			DW ?
    	Y 			DW ?
    	TOP_LEFT 	DW ?
    	BOT_RIGHT 	DW ?
    	OWNER 		DB ?			; 1 FOR P1, 2 FOR P2
    	CHECKED 	DB ?			; 0 FOR YES, 1 FOR NO
    CELL ENDS

    ; initialize cell by 'name CELL <?,?,?,?>'
    ;CELL <2,3,0,0>
	;POINT_A CELL <3,0>
	;MOV [CELL_A.X], 3
	;MOV [CELL_A.Y], 4

	;LEA AX, CELL_A
	;MOV [GRID+2], AX

    GRID 	DW 0, 0, 0, 0, 0, 0
    		DW 0, 0, 0, 0, 0, 0
    		DW 0, 0, 0, 0, 0, 0
    		DW 0, 0, 0, 0, 0, 0
    		DW 0, 0, 0, 0, 0, 0
    		DW 0, 0, 0, 0, 0, 0

    GRID_DRAW_BOUNDS_TOP_LEFT	DW 0A18H, 0A1DH, 0A22H, 0A27H, 0A2CH, 0A31H
    							DW 0C18H, 0C1DH, 0C22H, 0C27H, 0C2CH, 0C31H
    							DW 0E18H, 0E1DH, 0E22H, 0E27H, 0E2CH, 0E31H
    							DW 1018H, 101DH, 1022H, 1027H, 102CH, 1031H
    							DW 1218H, 121DH, 1222H, 1227H, 122CH, 1231H
    							DW 1418H, 141DH, 1422H, 1427H, 142CH, 1431H

	; GRID_DRAW_BOUNDS_TOP_LEFT	DW 2584, 2589, 2594, 2599, 2604, 2609
 ;    							DW 3096, 3101, 0C22H, 0C27H, 0C2CH, 0C31H
 ;    							DW 0E18H, 0E1DH, 0E22H, 0E27H, 0E2CH, 0E31H
 ;    							DW 1018H, 101DH, 1022H, 1027H, 102CH, 1031H
 ;    							DW 1218H, 121DH, 1222H, 1227H, 122CH, 1231H
 ;    							DW 1418H, 141DH, 1422H, 1427H, 142CH, 1431H    							

    GRID_DRAW_BOUNDS_BOT_RIGHT	DW 0B1BH, 0B20H, 0B25H, 0B2AH, 0B2FH, 0B34H
    							DW 0D1BH, 0D20H, 0D25H, 0D2AH, 0D2FH, 0D34H
    							DW 0F1BH, 0F20H, 0F25H, 0F2AH, 0F2FH, 0F34H
    							DW 111BH, 1120H, 1125H, 112AH, 112FH, 1134H
    							DW 131BH, 1320H, 1325H, 132AH, 132FH, 1334H
    							DW 151BH, 1520H, 1525H, 152AH, 152FH, 1534H

    BLOCK 	DB 177,177,177,177, '$'

    INDEX_I DW 0
    INDEX_J DW 0
    INDEX_K DW 0

DATASEG ENDS
;--------------------------------------
CODESEG SEGMENT PARA 'Code'
	ASSUME SS:STACKSEG, DS:DATASEG, CS:CODESEG

START:
	MAIN PROC FAR
		MOV AX, DATASEG 				; initialize
		MOV DS, AX
		MOV ES, AX

		CALL _DRAW_MAIN_SCREEN 			; draw main screen UI

		CALL _HIDE_CURSOR
		CALL _RESET_MOUSE

		CALL _SHOW_CURSOR

		MAIN_LOOP:
			CALL _GET_MOUSE_STAT

			CMP MOUSECLICK, 1H 			; check if left click
			JNE CONT_ML 				; if false, nothing happens
			CALL _ASSESS_CLICK	 		; if true, check what was clicked

			CONT_ML:
				CALL _DELAY
				JMP MAIN_LOOP

	    JMP EXIT_MAIN
	MAIN ENDP

EXIT_MAIN:
	CALL _TERMINATE
; ---------------------------------------------
_GET_MOUSE_STAT PROC NEAR
	MOV  AX, 3H 				; fxn code for get mouse pos(cx,dx) and btn status(bx)
	INT  33H 					; int code for mouse access
	MOV  mouseClick, BX 		; store btn clicked 

	PUSH DX 					; keep safe DX's value. it will be affected by DIVision fxn

	MOV AX, CX 					; divide CX (x pos) by 8 to get text mode reso
	MOV BL, 8
	DIV BL
	MOV AH, 00H
	MOV MOUSEX, AX 				; store correct x pos

	POP DX 						; refresh DX's orig value

	MOV AX, DX 					; divide DX (y pos) by 8 to get text mode reso
	MOV BL, 8
	DIV BL
	MOV AH, 00H
	MOV MOUSEY, AX 				; store correct y pos

	; MOUSEX & MOUSEY now has correct (80x25)-based coordinates

	MOV DH, 00
	MOV DL, 00
	CALL _SET_CURSOR

	MOV CX, MOUSEX
	CALL _PRINT_CX

	MOV AH, 02H
	MOV DL, ','
	INT 21H

	MOV CX, MOUSEY
	CALL _PRINT_CX
		  
	RET
_GET_MOUSE_STAT ENDP
;--------------------------------------
_RESET_MOUSE PROC NEAR
    push ax
    mov ax, 0
    int 33h
    pop ax
    ret
_RESET_MOUSE ENDP
;--------------------------------------
_SHOW_CURSOR PROC NEAR
    push ax
    mov ax, 1
    int 33h
    pop ax
    ret
_SHOW_CURSOR ENDP
;--------------------------------------
_HIDE_CURSOR PROC NEAR
    push ax
    mov ax, 2
    int 33h
    pop ax
    ret
_HIDE_CURSOR ENDP
;--------------------------------------
_DRAW_MAIN_SCREEN PROC NEAR
	CALL _HIDE_CURSOR

	MOV BH, 7EH 					; LIGHT GRAY (7H) BG | YELLOW (EH) FG
	CALL _CLEAR_SCREEN

	MOV DX, 0000H
	CALL _SET_CURSOR

	MOV AH, 09H
	LEA DX, MAIN_SCREEN_UI
	INT 21H

	LEA DX, CONST_SCREEN_MAINMENU 	; set current screen flag to main menu constant
	MOV CURRENT_SCREEN, DL

	CALL _SHOW_CURSOR
	RET
_DRAW_MAIN_SCREEN ENDP
;--------------------------------------
_DRAW_HOWTO_SCREEN PROC NEAR
	CALL _HIDE_CURSOR

	MOV BH, 7EH 					; LIGHT GRAY (7H) BG | YELLOW (EH) FG
	CALL _CLEAR_SCREEN

	MOV DX, 0000H
	CALL _SET_CURSOR

	MOV AH, 09H
	LEA DX, HOWTO_SCREEN_UI
	INT 21H

	LEA DX, CONST_SCREEN_HOWTO 	; set current screen flag to how to constant
	MOV CURRENT_SCREEN, DL

	CALL _SHOW_CURSOR
	RET
_DRAW_HOWTO_SCREEN ENDP
;--------------------------------------
_DRAW_GAMEPLAY_SCREEN PROC NEAR
	CALL _HIDE_CURSOR

	MOV BH, 7EH 					; LIGHT GRAY (7H) BG | YELLOW (EH) FG
	CALL _CLEAR_SCREEN

	MOV AX, 0600H			; fullscreen
	MOV BH, 79H			; light blue on dark grey
	MOV CX, 0D02H
	MOV DX, 1316H
	INT 10H

	MOV AX, 0600H			; fullscreen
	MOV BH, 7CH			; light red on dark grey
	MOV CX, 0D38H
	MOV DX, 134CH
	INT 10H

	MOV DX, 0000H
	CALL _SET_CURSOR

	MOV AH, 09H
	LEA DX, GAMEPLAY_SCREEN_UI
	INT 21H

	LEA DX, CONST_SCREEN_GAMEPLAY 	; set current screen flag to how to constant
	MOV CURRENT_SCREEN, DL

	CALL _SHOW_CURSOR
	CALL _ENTER_GAME_LOOP
	RET
_DRAW_GAMEPLAY_SCREEN ENDP
;--------------------------------------
_CLEAR_SCREEN PROC NEAR
	; turn-off blinking attribute
    MOV     AX, 1003h       
    MOV     BL, 00
    INT     10h

    ; BH -> BG-FG
	MOV AX, 0600H		; fullscreen
	; MOV BH, XXXX		; BH is set before calling for reusability
	MOV CX, 0000H
	MOV DX, 184FH
	INT 10H

 	RET
_CLEAR_SCREEN ENDP
;--------------------------------------------------
_SET_CURSOR PROC	NEAR
	MOV	AH, 02H		; request set cursor, use DX's values
	MOV BX, 00H
	;MOV DX, XXX 	; DX is set before calling for reusability
	INT	10H

	RET
_SET_CURSOR ENDP
;--------------------------------------------------
_ASSESS_CLICK PROC NEAR

	LEA DX, CONST_SCREEN_MAINMENU
	CMP CURRENT_SCREEN, DL
	JE AC_MAINMENU

	LEA DX, CONST_SCREEN_HOWTO
	CMP CURRENT_SCREEN, DL
	JE AC_HOWTO

	JMP EXIT_AC
	
	AC_MAINMENU:
		LEA SI, BTN_NEWGAME
		CALL _CHECK_BUTTON_PRESS
		CMP BOOLEAN_FLAG, 'T' 			; if True that button press was new game button
		JE AC_PRESSED_NEWGAME

		LEA SI, BTN_HOWTO
		CALL _CHECK_BUTTON_PRESS
		CMP BOOLEAN_FLAG, 'T' 			; if True that button press was how to button
		JE AC_PRESSED_HOWTO		

		LEA SI, BTN_QUIT
		CALL _CHECK_BUTTON_PRESS
		CMP BOOLEAN_FLAG, 'T' 			; if True that button press was how to button
		JE AC_PRESSED_QUIT

		JMP EXIT_AC

		AC_PRESSED_NEWGAME:
			CALL _DRAW_GAMEPLAY_SCREEN
			JMP EXIT_AC

		AC_PRESSED_HOWTO:
			CALL _DRAW_HOWTO_SCREEN
			JMP EXIT_AC

		AC_PRESSED_QUIT:
			CALL _TERMINATE

	AC_HOWTO:
		LEA SI, BTN_BACKTOMAIN_FROMHOWTO
		CALL _CHECK_BUTTON_PRESS
		CMP BOOLEAN_FLAG, 'T'
		JNE EXIT_AC

		AC_PRESSED_BACKTOMAIN_FHT:
			CALL _DRAW_MAIN_SCREEN
			JMP EXIT_AC


	EXIT_AC:
		MOV BOOLEAN_FLAG, 'F'
		RET
_ASSESS_CLICK ENDP
;--------------------------------------------------
_CHECK_BUTTON_PRESS PROC NEAR
		MOV BOOLEAN_FLAG, 'F'

		MOV AX, [SI] 			; UP
		INC SI
		INC SI
		MOV BX, [SI] 			; DOWN
		INC SI
		INC SI
		MOV CX, [SI] 			; LEFT
		INC SI
		INC SI
		MOV DX, [SI] 			; RIGHT
		INC SI
		INC SI
			
		CHECKBOUNDS:
			CMP MOUSEX, CX
			JL EXIT_CBP
			CMP MOUSEX, DX
			JG EXIT_CBP
			CMP MOUSEY, AX
			JL EXIT_CBP
			CMP MOUSEY, BX
			JG EXIT_CBP

			MOV BOOLEAN_FLAG, 'T'

	EXIT_CBP:
		RET
_CHECK_BUTTON_PRESS ENDP
;--------------------------------------------------
_PRINT_CX PROC NEAR
    LEA SI, NUM_LOC+9 		; set space for num characters. 10 chars of space

    ;INC CX
    MOV AX, CX           	; load value of CX to AX
    MOV BX, 10         		; set divisor to 10

	PC10:
        MOV DX, 0           ; clear DX; DX is where remainder is put after MUL
        DIV BX              ; AX:DX = AX/BX
        ADD DX, 48          ; add 48 to get ASCII char of number
        DEC SI              ; dec pointer index
        MOV [SI], DL
        CMP AX, 0            
        JZ EXIT_PC          ; if AX is 0, convertion has completed
        JMP PC10            ; else continue

	EXIT_PC:
        MOV AH, 09H            ; print string
        MOV DX, SI
        INT 21H

		LEA SI, NUM_LOC
        MOV CX, 10
        RESET_NUM_LOC:
        	MOV SI, ' '
        	INC SI
        	LOOP RESET_NUM_LOC

        RET
_PRINT_CX ENDP
;-------------------------------------------
_DELAY PROC	NEAR
	MOV BP, 3 				; lower value faster
	MOV SI, 3 				; lower value faster
	DELAY10:
		DEC BP
		NOP
		JNZ DELAY10
		DEC SI
		CMP SI,0
		JNZ DELAY10
		RET
_DELAY ENDP
;--------------------------------------------------
_ENTER_GAME_LOOP PROC NEAR

	
	; initialize utility variables
	;--------
	LEA DX, CONST_STATE_PLAYING
	MOV CURRENT_STATE, DL 				; set state to playing
	LEA DX, CONST_PLAYER_1
	MOV CURRENT_PLAYER, DL 				; set player to player1
	CALL _INIT_GRID
	;--------

	GAME_LOOP_1:
		CALL _GET_MOUSE_STAT

		CMP MOUSECLICK, 1H 			; check if left click
		JNE CONT_GL_1 				; if false, nothing happens
		CALL _GAMEMODE_ASSESS_CLICK	 		; if true, check what was clicked

		CONT_GL_1:
			CALL _DELAY
			JMP GAME_LOOP_1
	RET
_ENTER_GAME_LOOP ENDP
;--------------------------------------------------
_GAMEMODE_ASSESS_CLICK PROC NEAR
	CALL _TERMINATE
	RET
_GAMEMODE_ASSESS_CLICK ENDP
;--------------------------------------------------
_PRINT_CELL PROC NEAR

	; call after _GAMEMODE_ASSESS_CLICK
	; LEA SI, *CELL*
	LEA BX, CONST_PLAYER_1
	CMP CURRENT_PLAYER, BL
	JE PB_PLAYER1
	LEA BX, CONST_PLAYER_2
	CMP CURRENT_PLAYER, BL
	JE PB_PLAYER2

	PB_PLAYER1:
		MOV BH, 79H			; light blue on dark grey
		JMP CONT_PB
	PB_PLAYER2:
		MOV BH, 7CH			; light red on dark grey
		JMP CONT_PB

	CONT_PB:
		MOV AX, 0600H			; fullscreen	
		;MOV BX, XXXXH			; already set beforehand. color.
		MOV CX, [SI+6]			; top left
		MOV DX, [SI+10]			; bot right
		INT 10H

		MOV DH, 0AH
		MOV DL, 18H
		CALL _SET_CURSOR
		LEA DX, BLOCK
		MOV AH, 09H
		INT 21H

		MOV DH, 0BH
		MOV DL, 18H
		CALL _SET_CURSOR
		LEA DX, BLOCK
		MOV AH, 09H
		INT 21H

	RET
_PRINT_CELL ENDP
;--------------------------------------------------
_INIT_GRID PROC NEAR

	; grid indexing is 0-5
	MOV INDEX_K, 0000

	MOV INDEX_I, 0
	IG_LOOP1:
		CMP INDEX_I, 6
		JE BREAK_IG

		MOV INDEX_J, 0
		IG_LOOP2:
			CMP INDEX_J, 6
			JE BREAK_IGL2

			NEWCELL CELL <>				; declare new cell object. Cell NEWCELL = new Cell()
			MOV DX, 0000
			MOV DX, INDEX_J		
			MOV [NEWCELL.X], DX					; set X to INDEX_J

			MOV DX, 0000
			MOV DX, INDEX_I
			MOV [NEWCELL.Y], DX 				; set Y to INDEX_I

			; MOV CX, [NEWCELL.X]
			; CALL _PRINT_CX
			; MOV CX, [NEWCELL.Y]
			; CALL _PRINT_CX

			LEA SI, GRID_DRAW_BOUNDS_TOP_LEFT
			; MOV AX, INDEX_I 					; set base to INDEX_I or row
			; MOV BX, 5 							; multiplier
			; MUL BX 								; AX = AX * BX ; INDEX_I * 5
			; ADD AX, INDEX_J 					; (INDEX_I * 5) + INDEX_J
			; MOV TEMP_NUMBER, AX
			; MOV DX, [SI+TEMP_NUMBER] 				; load value from struct
			MOV DX, 0000
			MOV DX, [SI+INDEX_K]
			MOV [NEWCELL.TOP_LEFT], DX			; set drawing top_left bound

			MOV CX, [SI+INDEX_K]
			; MOV CX, [NEWCELL.TOP_LEFT]
			CALL _PRINT_CX

			; MOV CX, INDEX_K
			; CALL _PRINT_CX


			; LEA SI, GRID_DRAW_BOUNDS_BOT_RIGHT
			; MOV AX, INDEX_I
			; MOV BX, 5
			; MUL BX
			; ADD AX, INDEX_J
			; MOV TEMP_NUMBER, AX
			; MOV DX, [SI+TEMP_NUMBER]
			; MOV [NEWCELL.BOT_RIGHT], DX
			
			; MOV [NEWCELL.BOT_RIGHT], 0000H		; set drawing bot_right bound

			; MOV [NEWCELL.OWNER], ' ' 			; blank, no owner yet
			; LEA DX, CONST_BOOLEAN_FALSE 		
			; MOV [NEWCELL.CHECKED], DL 			; false, not checked yet 

			; LEA SI, GRID
			; MOV AX, INDEX_I
			; MOV BX, 5
			; MUL BX
			; ADD AX, INDEX_J
			; MOV TEMP_NUMBER, AX
			; MOV DX, [SI+TEMP_NUMBER]
			; LEA DX, NEWCELL
			; MOV [SI+TEMP_NUMBER], DX 						; set GRID[i][j] = NEWCELL

			INC INDEX_J
			INC INDEX_K
			INC INDEX_K
			JMP IG_LOOP2

		BREAK_IGL2:
			LEA DX, CONST_NEWLINE
			MOV AH, 09H
			INT 21H

			INC INDEX_I
			JMP IG_LOOP1

	BREAK_IG:
		RET
_INIT_GRID ENDP
;--------------------------------------------------
_TERMINATE PROC
	MOV AH, 4CH		; System.exit(0)
	INT 21H
_TERMINATE ENDP

CODESEG ENDS
END START