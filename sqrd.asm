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
	
	BTN_GAMESCREEN_RETURN		DW 24,25,25,36    						
	BTN_GAMESCREEN_RESTART		DW 24,25,40,51

	PLAYER_INDICATOR_UI_1					DB "-_-_-_-", '$'
	PLAYER_INDICATOR_UI_2					DB "  \./  ", '$'

	PLAYER_INDICATOR_DEL_1					DB "       ", '$'
	PLAYER_INDICATOR_DEL_2					DB "       ", '$'

	PLAYER_INDICATOR_POS_P1					DW 0B07H, 0C07H
	PLAYER_INDICATOR_POS_P2 				DW 0B3DH, 0C3DH
	                  
    ; -----------------------------------------

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

	CONST_PLAYER_0			DW 0
	CONST_PLAYER_1			DW 1
	CONST_PLAYER_2			DW 2
    CURRENT_PLAYER 			DW ?

    CONST_BOOLEAN_TRUE		DW 1
    CONST_BOOLEAN_FALSE		DW 0
    
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
    	OWNER 		DW ?			; 1 FOR P1, 2 FOR P2
    	CHECKED 	DW ?			; 1 FOR YES/TRUE, 0 FOR NO/FALSE
    CELL ENDS

    ; initialize cell by
    ;CELL <2,3,0,0>
	;POINT_A CELL <3,0>
	;MOV [CELL_A.X], 3

	; INITIALIZE GRID
	;--------------------
	; CELL <X,Y,TOP_LEFT,BOT_RIGHT,OWNER(1 p1 OR 2 p2 OR 0 no owner), CHECKED (1 YES OR 0 NO)>
	CELL_0_0		CELL <0,0,0A18H,0B1BH,0,0>
	CELL_1_0		CELL <1,0,0A1DH,0B20H,0,0>
	CELL_2_0		CELL <2,0,0A22H,0B25H,0,0>
	CELL_3_0		CELL <3,0,0A27H,0B2AH,0,0>
	CELL_4_0		CELL <4,0,0A2CH,0B2FH,0,0>
	CELL_5_0		CELL <5,0,0A31H,0B34H,0,0>

	CELL_0_1		CELL <0,1,0C18H,0D1BH,0,0>
	CELL_1_1		CELL <1,1,0C1DH,0D20H,0,0>
	CELL_2_1		CELL <2,1,0C22H,0D25H,0,0>
	CELL_3_1		CELL <3,1,0C27H,0D2AH,0,0>
	CELL_4_1		CELL <4,1,0C2CH,0D2FH,0,0>
	CELL_5_1		CELL <5,1,0C31H,0D34H,0,0>

	CELL_0_2		CELL <0,2,0E18H,0F1BH,0,0>
	CELL_1_2		CELL <1,2,0E1DH,0F20H,0,0>
	CELL_2_2		CELL <2,2,0E22H,0F25H,0,0>
	CELL_3_2		CELL <3,2,0E27H,0F2AH,0,0>
	CELL_4_2		CELL <4,2,0E2CH,0F2FH,0,0>
	CELL_5_2		CELL <5,2,0E31H,0F34H,0,0>

	CELL_0_3		CELL <0,3,1018H,111BH,0,0>
	CELL_1_3		CELL <1,3,101DH,1120H,0,0>
	CELL_2_3		CELL <2,3,1022H,1125H,0,0>
	CELL_3_3		CELL <3,3,1027H,112AH,0,0>
	CELL_4_3		CELL <4,3,102CH,112FH,0,0>
	CELL_5_3		CELL <5,3,1031H,1134H,0,0>

	CELL_0_4		CELL <0,4,1218H,131BH,0,0>
	CELL_1_4		CELL <1,4,121DH,1320H,0,0>
	CELL_2_4		CELL <2,4,1222H,1325H,0,0>
	CELL_3_4		CELL <3,4,1227H,132AH,0,0>
	CELL_4_4		CELL <4,4,122CH,132FH,0,0>
	CELL_5_4		CELL <5,4,1231H,1334H,0,0>

	CELL_0_5		CELL <0,5,1418H,151BH,0,0>
	CELL_1_5		CELL <1,5,141DH,1520H,0,0>
	CELL_2_5		CELL <2,5,1422H,1525H,0,0>
	CELL_3_5		CELL <3,5,1427H,152AH,0,0>
	CELL_4_5		CELL <4,5,142CH,152FH,0,0>
	CELL_5_5		CELL <5,5,1431H,1534H,0,0>
	;--------------------

	; grid click bounds
	;--------------------
	BTN_0_0		DW 10, 11, 24, 27
	BTN_1_0		DW 10, 11, 29, 32
	BTN_2_0		DW 10, 11, 34, 37
	BTN_3_0		DW 10, 11, 39, 42
	BTN_4_0		DW 10, 11, 44, 47
	BTN_5_0		DW 10, 11, 49, 52

	BTN_0_1		DW 12, 13, 24, 27
	BTN_1_1		DW 12, 13, 29, 32
	BTN_2_1		DW 12, 13, 34, 37
	BTN_3_1		DW 12, 13, 39, 42
	BTN_4_1		DW 12, 13, 44, 47
	BTN_5_1		DW 12, 13, 49, 52

	BTN_0_2		DW 14, 15, 24, 27
	BTN_1_2		DW 14, 15, 29, 32
	BTN_2_2		DW 14, 15, 34, 37
	BTN_3_2		DW 14, 15, 39, 42
	BTN_4_2		DW 14, 15, 44, 47
	BTN_5_2		DW 14, 15, 49, 52

	BTN_0_3		DW 16, 17, 24, 27
	BTN_1_3		DW 16, 17, 29, 32
	BTN_2_3		DW 16, 17, 34, 37
	BTN_3_3		DW 16, 17, 39, 42
	BTN_4_3		DW 16, 17, 44, 47
	BTN_5_3		DW 16, 17, 49, 52

	BTN_0_4		DW 18, 19, 24, 27
	BTN_1_4		DW 18, 19, 29, 32
	BTN_2_4		DW 18, 19, 34, 37
	BTN_3_4		DW 18, 19, 39, 42
	BTN_4_4		DW 18, 19, 44, 47
	BTN_5_4		DW 18, 19, 49, 52

	BTN_0_5		DW 20, 21, 24, 27
	BTN_1_5		DW 20, 21, 29, 32
	BTN_2_5		DW 20, 21, 34, 37
	BTN_3_5		DW 20, 21, 39, 42
	BTN_4_5		DW 20, 21, 44, 47
	BTN_5_5		DW 20, 21, 49, 52
	;--------------------

    GRID_DRAW_BOUNDS_TOP_LEFT	DW 0A18H, 0A1DH, 0A22H, 0A27H, 0A2CH, 0A31H
    							DW 0C18H, 0C1DH, 0C22H, 0C27H, 0C2CH, 0C31H
    							DW 0E18H, 0E1DH, 0E22H, 0E27H, 0E2CH, 0E31H
    							DW 1018H, 101DH, 1022H, 1027H, 102CH, 1031H
    							DW 1218H, 121DH, 1222H, 1227H, 122CH, 1231H
    							DW 1418H, 141DH, 1422H, 1427H, 142CH, 1431H

    GRID_DRAW_BOUNDS_BOT_RIGHT	DW 0B1BH, 0B20H, 0B25H, 0B2AH, 0B2FH, 0B34H
    							DW 0D1BH, 0D20H, 0D25H, 0D2AH, 0D2FH, 0D34H
    							DW 0F1BH, 0F20H, 0F25H, 0F2AH, 0F2FH, 0F34H
    							DW 111BH, 1120H, 1125H, 112AH, 112FH, 1134H
    							DW 131BH, 1320H, 1325H, 132AH, 132FH, 1334H
    							DW 151BH, 1520H, 1525H, 152AH, 152FH, 1534H

	; GRID_DRAW_BOUNDS_TOP_LEFT	DW 2584, 2589, 2594, 2599, 2604, 2609
 ;    							DW 3096, 3101, 0C22H, 0C27H, 0C2CH, 0C31H
 ;    							DW 0E18H, 0E1DH, 0E22H, 0E27H, 0E2CH, 0E31H
 ;    							DW 1018H, 101DH, 1022H, 1027H, 102CH, 1031H
 ;    							DW 1218H, 121DH, 1222H, 1227H, 122CH, 1231H
 ;    							DW 1418H, 141DH, 1422H, 1427H, 142CH, 1431H    							

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

			LEA DX, CONST_STATE_PLAYING
			CMP CURRENT_STATE, DL
			JNE CONT_ML
			LEA DX, CONST_PLAYER_1
			CMP CURRENT_PLAYER, DX
			JE DRAW_P1_GRAPHICS
			LEA DX, CONST_PLAYER_2
			CMP CURRENT_PLAYER, DX
			JE DRAW_P2_GRAPHICS
			JMP CONT_ML

			DRAW_P1_GRAPHICS:
				PUSH [PLAYER_INDICATOR_POS_P1+0]
				PUSH [PLAYER_INDICATOR_POS_P1+2]
				CALL _PRINT_INDICATOR
				PUSH [PLAYER_INDICATOR_POS_P2+0]
				PUSH [PLAYER_INDICATOR_POS_P2+2]
				CALL _ERASE_INDICATOR
				JMP CONT_ML

			DRAW_P2_GRAPHICS:
				PUSH [PLAYER_INDICATOR_POS_P2+0]
				PUSH [PLAYER_INDICATOR_POS_P2+2]
				CALL _PRINT_INDICATOR
				PUSH [PLAYER_INDICATOR_POS_P1+0]
				PUSH [PLAYER_INDICATOR_POS_P1+2]
				CALL _ERASE_INDICATOR
				JMP CONT_ML

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

	LEA DX, CONST_STATE_OVER
	MOV CURRENT_STATE, DL			; set curr state to not playing/over

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

	LEA DX, CONST_SCREEN_HOWTO 		; set current screen flag to how to constant
	MOV CURRENT_SCREEN, DL

	LEA DX, CONST_STATE_OVER
	MOV CURRENT_STATE, DL			; set curr state to not playing/over

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
	MOV CX, 0B02H
	MOV DX, 1316H
	INT 10H

	MOV AX, 0600H			; fullscreen
	MOV BH, 7CH			; light red on dark grey
	MOV CX, 0B38H
	MOV DX, 134CH
	INT 10H

	MOV DX, 0000H
	CALL _SET_CURSOR

	MOV AH, 09H
	LEA DX, GAMEPLAY_SCREEN_UI
	INT 21H

	LEA DX, CONST_SCREEN_GAMEPLAY 			; set current screen to GameScreen
	MOV CURRENT_SCREEN, DL

	LEA DX, CONST_STATE_PLAYING 			; set current state to Playing
	MOV CURRENT_STATE, DL

	LEA DX, CONST_PLAYER_1
	MOV CURRENT_PLAYER, DX

	CALL _SHOW_CURSOR

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
_PRINT_INDICATOR PROC NEAR
	PUSH BP
	MOV BP, SP

	; draw graphic arrow
	MOV DX, [BP+6]
	CALL _SET_CURSOR
	LEA DX, PLAYER_INDICATOR_UI_1
	MOV AH, 09H
	INT 21H

	MOV DX, [BP+4]
	CALL _SET_CURSOR
	LEA DX, PLAYER_INDICATOR_UI_2
	MOV AH, 09H
	INT 21H

	MOV SP, BP
	POP BP
	RET 2
_PRINT_INDICATOR ENDP
;--------------------------------------------------
_ERASE_INDICATOR PROC NEAR
	PUSH BP
	MOV BP, SP

	; draw graphic arrow
	MOV DX, [BP+6]
	CALL _SET_CURSOR
	LEA DX, PLAYER_INDICATOR_DEL_1
	MOV AH, 09H
	INT 21H

	MOV DX, [BP+4]
	CALL _SET_CURSOR
	LEA DX, PLAYER_INDICATOR_DEL_2
	MOV AH, 09H
	INT 21H

	MOV SP, BP
	POP BP
	RET 2
_ERASE_INDICATOR ENDP
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

	LEA DX, CONST_SCREEN_GAMEPLAY
	CMP CURRENT_SCREEN, DL
	JE AC_GAMEPLAY

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

	AC_GAMEPLAY:
		LEA SI, BTN_GAMESCREEN_RETURN
		CALL _CHECK_BUTTON_PRESS
		CMP BOOLEAN_FLAG, 'T'
		JE AC_GAMESCREEN_PRESSED_RETURN

		LEA SI, BTN_GAMESCREEN_RESTART
		CALL _CHECK_BUTTON_PRESS
		CMP BOOLEAN_FLAG, 'T'
		JE AC_GAMESCREEN_PRESSED_RESTART

		CALL _CHECK_BUTTON_PRESS_GRID

		JMP EXIT_AC

		AC_GAMESCREEN_PRESSED_RETURN:
			CALL _DRAW_MAIN_SCREEN
			JMP EXIT_AC

		AC_GAMESCREEN_PRESSED_RESTART:
			CALL _DRAW_GAMEPLAY_SCREEN
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
_TERMINATE PROC
	MOV AH, 4CH		; System.exit(0)
	INT 21H
_TERMINATE ENDP
;--------------------------------------------------
_CHECK_BUTTON_PRESS_GRID PROC NEAR
		LEA SI, BTN_0_0
		CALL _CHECK_BUTTON_PRESS
		CMP BOOLEAN_FLAG, 'T'
		JNE CHECK_BTN_1_0
		LEA DI, CELL_0_0
		CALL _CLICK_CELL
		JMP EXIT_CBPG

		CHECK_BTN_1_0:
			LEA SI, BTN_1_0
			CALL _CHECK_BUTTON_PRESS
			CMP BOOLEAN_FLAG, 'T'
			JNE CHECK_BTN_2_0
			LEA DI, CELL_1_0
			CALL _CLICK_CELL
			JMP EXIT_CBPG

		CHECK_BTN_2_0:
			LEA SI, BTN_2_0
			CALL _CHECK_BUTTON_PRESS
			CMP BOOLEAN_FLAG, 'T'
			JNE CHECK_BTN_3_0
			LEA DI, CELL_2_0
			CALL _CLICK_CELL
			JMP EXIT_CBPG

		CHECK_BTN_3_0:
			LEA SI, BTN_3_0
			CALL _CHECK_BUTTON_PRESS
			CMP BOOLEAN_FLAG, 'T'
			JNE CHECK_BTN_4_0
			LEA DI, CELL_3_0
			CALL _CLICK_CELL
			JMP EXIT_CBPG

		CHECK_BTN_4_0:
			LEA SI, BTN_4_0
			CALL _CHECK_BUTTON_PRESS
			CMP BOOLEAN_FLAG, 'T'
			JNE CHECK_BTN_5_0
			LEA DI, CELL_4_0
			CALL _CLICK_CELL
			JMP EXIT_CBPG

		CHECK_BTN_5_0:
			LEA SI, BTN_5_0
			CALL _CHECK_BUTTON_PRESS
			CMP BOOLEAN_FLAG, 'T'
			JNE CHECK_BTN_0_1
			LEA DI, CELL_5_0
			CALL _CLICK_CELL
			JMP EXIT_CBPG

		CHECK_BTN_0_1:
			LEA SI, BTN_0_1
			CALL _CHECK_BUTTON_PRESS
			CMP BOOLEAN_FLAG, 'T'
			JNE CHECK_BTN_1_1
			LEA DI, CELL_0_1
			CALL _CLICK_CELL
			JMP EXIT_CBPG

		CHECK_BTN_1_1:
			LEA SI, BTN_1_1
			CALL _CHECK_BUTTON_PRESS
			CMP BOOLEAN_FLAG, 'T'
			JNE CHECK_BTN_2_1
			LEA DI, CELL_1_1
			CALL _CLICK_CELL
			JMP EXIT_CBPG

		CHECK_BTN_2_1:
			LEA SI, BTN_2_1
			CALL _CHECK_BUTTON_PRESS
			CMP BOOLEAN_FLAG, 'T'
			JNE CHECK_BTN_3_1
			LEA DI, CELL_2_1
			CALL _CLICK_CELL
			JMP EXIT_CBPG

		CHECK_BTN_3_1:
			LEA SI, BTN_3_1
			CALL _CHECK_BUTTON_PRESS
			CMP BOOLEAN_FLAG, 'T'
			JNE CHECK_BTN_4_1
			LEA DI, CELL_3_1
			CALL _CLICK_CELL
			JMP EXIT_CBPG

		CHECK_BTN_4_1:
			LEA SI, BTN_4_1
			CALL _CHECK_BUTTON_PRESS
			CMP BOOLEAN_FLAG, 'T'
			JNE CHECK_BTN_5_1
			LEA DI, CELL_4_1
			CALL _CLICK_CELL
			JMP EXIT_CBPG

		CHECK_BTN_5_1:
			LEA SI, BTN_5_1
			CALL _CHECK_BUTTON_PRESS
			CMP BOOLEAN_FLAG, 'T'
			JNE CHECK_BTN_0_2
			LEA DI, CELL_5_1
			CALL _CLICK_CELL
			JMP EXIT_CBPG

		CHECK_BTN_0_2:
			LEA SI, BTN_0_2
			CALL _CHECK_BUTTON_PRESS
			CMP BOOLEAN_FLAG, 'T'
			JNE CHECK_BTN_1_2
			LEA DI, CELL_0_2
			CALL _CLICK_CELL
			JMP EXIT_CBPG

		CHECK_BTN_1_2:
			LEA SI, BTN_1_2
			CALL _CHECK_BUTTON_PRESS
			CMP BOOLEAN_FLAG, 'T'
			JNE CHECK_BTN_2_2
			LEA DI, CELL_1_2
			CALL _CLICK_CELL
			JMP EXIT_CBPG

		CHECK_BTN_2_2:
			LEA SI, BTN_2_2
			CALL _CHECK_BUTTON_PRESS
			CMP BOOLEAN_FLAG, 'T'
			JNE CHECK_BTN_3_2
			LEA DI, CELL_2_2
			CALL _CLICK_CELL
			JMP EXIT_CBPG

		CHECK_BTN_3_2:
			LEA SI, BTN_3_2
			CALL _CHECK_BUTTON_PRESS
			CMP BOOLEAN_FLAG, 'T'
			JNE CHECK_BTN_4_2
			LEA DI, CELL_3_2
			CALL _CLICK_CELL
			JMP EXIT_CBPG

		CHECK_BTN_4_2:
			LEA SI, BTN_4_2
			CALL _CHECK_BUTTON_PRESS
			CMP BOOLEAN_FLAG, 'T'
			JNE CHECK_BTN_5_2
			LEA DI, CELL_4_2
			CALL _CLICK_CELL
			JMP EXIT_CBPG

		CHECK_BTN_5_2:
			LEA SI, BTN_5_2
			CALL _CHECK_BUTTON_PRESS
			CMP BOOLEAN_FLAG, 'T'
			JNE CHECK_BTN_0_3
			LEA DI, CELL_5_2
			CALL _CLICK_CELL
			JMP EXIT_CBPG

		CHECK_BTN_0_3:
			LEA SI, BTN_0_3
			CALL _CHECK_BUTTON_PRESS
			CMP BOOLEAN_FLAG, 'T'
			JNE CHECK_BTN_1_3
			LEA DI, CELL_0_3
			CALL _CLICK_CELL
			JMP EXIT_CBPG

		CHECK_BTN_1_3:
			LEA SI, BTN_1_3
			CALL _CHECK_BUTTON_PRESS
			CMP BOOLEAN_FLAG, 'T'
			JNE CHECK_BTN_2_3
			LEA DI, CELL_1_3
			CALL _CLICK_CELL
			JMP EXIT_CBPG

		CHECK_BTN_2_3:
			LEA SI, BTN_2_3
			CALL _CHECK_BUTTON_PRESS
			CMP BOOLEAN_FLAG, 'T'
			JNE CHECK_BTN_3_3
			LEA DI, CELL_2_3
			CALL _CLICK_CELL
			JMP EXIT_CBPG

		CHECK_BTN_3_3:
			LEA SI, BTN_3_3
			CALL _CHECK_BUTTON_PRESS
			CMP BOOLEAN_FLAG, 'T'
			JNE CHECK_BTN_4_3
			LEA DI, CELL_3_3
			CALL _CLICK_CELL
			JMP EXIT_CBPG

		CHECK_BTN_4_3:
			LEA SI, BTN_4_3
			CALL _CHECK_BUTTON_PRESS
			CMP BOOLEAN_FLAG, 'T'
			JNE CHECK_BTN_5_3
			LEA DI, CELL_4_3
			CALL _CLICK_CELL
			JMP EXIT_CBPG

		CHECK_BTN_5_3:
			LEA SI, BTN_5_3
			CALL _CHECK_BUTTON_PRESS
			CMP BOOLEAN_FLAG, 'T'
			JNE CHECK_BTN_0_4
			LEA DI, CELL_5_3
			CALL _CLICK_CELL
			JMP EXIT_CBPG

		CHECK_BTN_0_4:
			LEA SI, BTN_0_4
			CALL _CHECK_BUTTON_PRESS
			CMP BOOLEAN_FLAG, 'T'
			JNE CHECK_BTN_1_4
			LEA DI, CELL_0_4
			CALL _CLICK_CELL
			JMP EXIT_CBPG

		CHECK_BTN_1_4:
			LEA SI, BTN_1_4
			CALL _CHECK_BUTTON_PRESS
			CMP BOOLEAN_FLAG, 'T'
			JNE CHECK_BTN_2_4
			LEA DI, CELL_1_4
			CALL _CLICK_CELL
			JMP EXIT_CBPG

		CHECK_BTN_2_4:
			LEA SI, BTN_2_4
			CALL _CHECK_BUTTON_PRESS
			CMP BOOLEAN_FLAG, 'T'
			JNE CHECK_BTN_3_4
			LEA DI, CELL_2_4
			CALL _CLICK_CELL
			JMP EXIT_CBPG

		CHECK_BTN_3_4:
			LEA SI, BTN_3_4
			CALL _CHECK_BUTTON_PRESS
			CMP BOOLEAN_FLAG, 'T'
			JNE CHECK_BTN_4_4
			LEA DI, CELL_3_4
			CALL _CLICK_CELL
			JMP EXIT_CBPG

		CHECK_BTN_4_4:
			LEA SI, BTN_4_4
			CALL _CHECK_BUTTON_PRESS
			CMP BOOLEAN_FLAG, 'T'
			JNE CHECK_BTN_5_4
			LEA DI, CELL_4_4
			CALL _CLICK_CELL
			JMP EXIT_CBPG

		CHECK_BTN_5_4:
			LEA SI, BTN_5_4
			CALL _CHECK_BUTTON_PRESS
			CMP BOOLEAN_FLAG, 'T'
			JNE CHECK_BTN_0_5
			LEA DI, CELL_5_4
			CALL _CLICK_CELL
			JMP EXIT_CBPG

		CHECK_BTN_0_5:
			LEA SI, BTN_0_5
			CALL _CHECK_BUTTON_PRESS
			CMP BOOLEAN_FLAG, 'T'
			JNE CHECK_BTN_1_5
			LEA DI, CELL_0_5
			CALL _CLICK_CELL
			JMP EXIT_CBPG

		CHECK_BTN_1_5:
			LEA SI, BTN_1_5
			CALL _CHECK_BUTTON_PRESS
			CMP BOOLEAN_FLAG, 'T'
			JNE CHECK_BTN_2_5
			LEA DI, CELL_1_5
			CALL _CLICK_CELL
			JMP EXIT_CBPG

		CHECK_BTN_2_5:
			LEA SI, BTN_2_5
			CALL _CHECK_BUTTON_PRESS
			CMP BOOLEAN_FLAG, 'T'
			JNE CHECK_BTN_3_5
			LEA DI, CELL_2_5
			CALL _CLICK_CELL
			JMP EXIT_CBPG

		CHECK_BTN_3_5:
			LEA SI, BTN_3_5
			CALL _CHECK_BUTTON_PRESS
			CMP BOOLEAN_FLAG, 'T'
			JNE CHECK_BTN_4_5
			LEA DI, CELL_3_5
			CALL _CLICK_CELL
			JMP EXIT_CBPG

		CHECK_BTN_4_5:
			LEA SI, BTN_4_5
			CALL _CHECK_BUTTON_PRESS
			CMP BOOLEAN_FLAG, 'T'
			JNE CHECK_BTN_5_5
			LEA DI, CELL_4_5
			CALL _CLICK_CELL
			JMP EXIT_CBPG

		CHECK_BTN_5_5:
			LEA SI, BTN_5_5
			CALL _CHECK_BUTTON_PRESS
			CMP BOOLEAN_FLAG, 'T'
			JNE EXIT_CBPG
			LEA DI, CELL_5_5
			CALL _CLICK_CELL
			JMP EXIT_CBPG

	EXIT_CBPG:
		RET
_CHECK_BUTTON_PRESS_GRID ENDP
;--------------------------------------------------
_CLICK_CELL PROC NEAR
	; draw clicked based on player
	; use 
	MOV DX, CONST_PLAYER_0 			; check if cell hasn't been clicked yet
	CMP [DI+8], DX
	JNE EXIT_CLICK_CELL

	CALL _PRINT_CELL 				; print block on grid
	
	LEA DX, CONST_PLAYER_1
	CMP CURRENT_PLAYER, DX
	JE SET_TO_P2 					; if P1 is curr, change to P2
	LEA DX, CONST_PLAYER_2
	CMP CURRENT_PLAYER, DX
	JE SET_TO_P1 					; if P2 is curr, change to P1

	SET_TO_P1: 						; else if P2 is curr, set to P1
		LEA DX, CONST_PLAYER_2 		; set CELL.OWNER to P2
		MOV [DI+8], DX

		LEA DX, CONST_PLAYER_1 		; change curr player from p2 to p1
		MOV CURRENT_PLAYER, DX
		JMP EXIT_CLICK_CELL

	SET_TO_P2:
		LEA DX, CONST_PLAYER_1 		; set CELL.OWNER to P1
		MOV [DI+8], DX

		LEA DX, CONST_PLAYER_2 		; change curr player from p1 to p2
		MOV CURRENT_PLAYER, DX
		JMP EXIT_CLICK_CELL

	EXIT_CLICK_CELL:
		RET
_CLICK_CELL ENDP
;--------------------------------------------------
_PRINT_CELL PROC NEAR
	; check current player to set color of box accordingly
	; blue for P1, red for P2
	LEA BX, CONST_PLAYER_1
	CMP CURRENT_PLAYER, BX
	JE PB_PLAYER1
	LEA BX, CONST_PLAYER_2
	CMP CURRENT_PLAYER, BX
	JE PB_PLAYER2

	PB_PLAYER1:
		MOV BH, 79H			; light blue on dark grey
		JMP CONT_PB
	PB_PLAYER2:
		MOV BH, 7CH			; light red on dark grey
		JMP CONT_PB

	CONT_PB:
		CALL _HIDE_CURSOR
		; set color
		MOV AX, 0600H			; fullscreen	
		;MOV BX, XXXXH			; already set beforehand. color.
		MOV CX, [DI+4]			; top left
		MOV DX, [DI+6]			; bot right
		INT 10H
		
		; draw blocks
		MOV DX, [DI+4] 			; CELL<X,Y,0000,0000,?,?> note: indexing is ->0-2-4-6-8-10
		CALL _SET_CURSOR
		LEA DX, BLOCK
		MOV AH, 09H
		INT 21H

		MOV DX, [DI+6]
		SUB DL, 3 				; subtract 3 units to the left
		CALL _SET_CURSOR
		LEA DX, BLOCK
		MOV AH, 09H
		INT 21H

		CALL _SHOW_CURSOR

	RET
_PRINT_CELL ENDP
;--------------------------------------------------
CODESEG ENDS
END START

















