
; SCRIPT SECTION mapsetups\map22\s5_20A :
; 
ms_map22_flag20A_Section5:
										dc.b $23
										dc.b $18
										dc.b $FF
										dc.b $7D
										dc.w sub_59610-ms_map22_flag20A_Section5
										dc.b $FD
										dc.b 0
										dc.b 0
										dc.b 0
										dc.w return_5962C-ms_map22_flag20A_Section5

; =============== S U B R O U T I N E =======================================

sub_59610:
										
										moveq   #$7D,d1 
										jsr     sub_81D0
										cmp.w   #$FFFF,d0
										beq.s   loc_59624
										jsr     j_RemoveItemBySlot
loc_59624:
										
										lea     cs_599B2(pc), a0
										trap    #6
										moveq   #$FFFFFFFF,d6
return_5962C:
										
										rts

	; End of function sub_59610

