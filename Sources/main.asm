;*******************************************************************
;* This stationery serves as the framework for a user application. *
;* For a more comprehensive program that demonstrates the more     *
;* advanced functionality of this processor, please see the        *
;* demonstration applications, located in the examples             *
;* subdirectory of the "Freescale CodeWarrior for HC08" program    *
;* directory.                                                      *
;*******************************************************************

; Include derivative-specific definitions
            INCLUDE 'derivative.inc'
            
;
; export symbols
;
            XDEF Inicio
            ABSENTRY Inicio

;
; variable/data section
;
            ORG    RAMStart         ; Insert your data definition here
ExampleVar: DS.B   1                ; ExampleVar es la direccion $100
Var2:    	DS.B   1                ; otraVar es la direccion $101

;
; code section
;
            ORG    ROMStart
            

Inicio:		LDA	   	#$12		;Inmediato 	A=$12 hexa Quitar el WATCHDOG
			STA		SOPT1		;Directo 	Guardar A en SOPT1
			
			LDA		#$03		;Inmediato
			LDA		$60			;Directo
			LDA		$0120		;Extendido
			LDA		ExampleVar	
			ADD		#$01
			STA		ExampleVar
			
			LDA		ExampleVar	
			ADD		Var2
			STA		ExampleVar

mainLoop:	BRA    mainLoop
			
;**************************************************************
;* spurious - Spurious Interrupt Service Routine.             *
;*             (unwanted interrupt)                           *
;**************************************************************

spurious:				; placed here so that security value
			NOP			; does not change all the time.
			RTI

;**************************************************************
;*                 Interrupt Vectors                          *
;**************************************************************

            ORG	$FFFA

			DC.W  spurious			;
			DC.W  spurious			; SWI
			DC.W  Inicio			; Reset
