
; SCRIPT SECTION mapsetups\map14\s3 :
; 
ms_map14_Section3:  dc.b $2D
										dc.b 5
										dc.w sub_58E50-ms_map14_Section3
										dc.w $FD00
										dc.w return_58E5A-ms_map14_Section3

; =============== S U B R O U T I N E =======================================

sub_58E50:
										
										lea     (Map42Section0+$146-ms_map14_Section3)(pc), a0
										trap    #6
										trap    #2
										dc.w $101
return_58E5A:
										
										rts

	; End of function sub_58E50

cs_58E5C:           dc.w 4                  ; 0004 SET TEXT INDEX 8D5
										dc.w $8D5
										dc.w 2                  ; 0002 DISPLAY TEXT BOX FFFF
										dc.w $FFFF
										dc.w $11                ; 0011 STORY YESNO PROMPT
										dc.w $D                 ; 000D JUMP IF CLEAR FLAG 59 58EB8
										dc.w $59
										dc.l word_58EB8         
										dc.w 9                  ; 0009 HIDE TEXTBOX AND PORTRAIT
										dc.w $2D                ; 002D MOVE ENTITY 0 FF 3 1
										dc.b 0
										dc.b $FF
										dc.b 3
										dc.b 1
										dc.w $8080
										dc.b $80                ; WAIT 28
										dc.b $28
										dc.w $15                ; 0015 SET ACTSCRIPT 83 FF 46172
										dc.b $83
										dc.b $FF
										dc.l eas_46172          
										dc.w $15                ; 0015 SET ACTSCRIPT 84 FF 46172
										dc.b $84
										dc.b $FF
										dc.l eas_46172          
										dc.w $15                ; 0015 SET ACTSCRIPT 85 FF 46172
										dc.b $85
										dc.b $FF
										dc.l eas_46172          
										dc.w $2D                ; 002D MOVE ENTITY 0 0 3 3
										dc.b 0
										dc.b 0
										dc.b 3
										dc.b 3
										dc.w $8080
										dc.w $2D                ; 002D MOVE ENTITY 83 0 3 3
										dc.b $83
										dc.b 0
										dc.b 3
										dc.b 3
										dc.w $8080
										dc.w $2D                ; 002D MOVE ENTITY 84 0 3 3
										dc.b $84
										dc.b 0
										dc.b 3
										dc.b 3
										dc.w $8080
										dc.w $2D                ; 002D MOVE ENTITY 85 FF 3 3
										dc.b $85
										dc.b $FF
										dc.b 3
										dc.b 3
										dc.w $8080
										dc.w 7                  ; 0007 EXECUTE MAP SYSTEM EVENT E0D0B03
										dc.l $E0D0B03
word_58EB8:         dc.w $FFFF              ; END OF CUTSCENE SCRIPT
