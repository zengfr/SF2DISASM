
; SCRIPT SECTION mapsetups\map15\s3_212 :
; 
ms_map15_flag212_Section3:
										dc.b $18
										dc.b $12
										dc.w sub_5D008-ms_map15_flag212_Section3
										dc.w $FD00
										dc.w nullsub_77-ms_map15_flag212_Section3

; =============== S U B R O U T I N E =======================================

nullsub_77:
										
										rts

	; End of function nullsub_77


; =============== S U B R O U T I N E =======================================

sub_5D008:
										
										trap    #1
										dc.w $2D4
										beq.s   return_5D01E
										trap    #1
										dc.w $334
										bne.s   return_5D01E
										lea     cs_5D04E(pc), a0
										trap    #6
										trap    #2
										dc.w $334
return_5D01E:
										
										rts

	; End of function sub_5D008

