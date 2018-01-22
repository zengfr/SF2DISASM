
; ASM FILE data\maps\entries\map15\mapsetups\s6.asm :
; 0x5D04C..0x5D1CA : 

; =============== S U B R O U T I N E =======================================

ms_map15_InitFunction:
		
		rts

	; End of function ms_map15_InitFunction

cs_5D04E:       textCursor $7D6
		setFacing $0,$0
		setEntityDest $7,$18,$11
		setFacing $7,$0
		entityPosDir $14,$1F,$21,$1
		csWait $1
		setCamDest $1A,$16
		setActscript $0,$FF,eas_Init
		setActscript $7,$FF,eas_Init
		setActscript $1F,$FF,eas_Init
		entityPosDir $7,$18,$11,$0
		entityPosDir $1F,$18,$10,$0
		entityPosDir $0,$18,$12,$0
		csc2F $14,$FFFF
		moveEntity $14,$0,$1,$8
		endMove $8080
		csWait $3C
		setCamDest $1A,$14
		moveEntity $14,$0,$2,$3
		endMove $8080
		setCamDest $14,$14
		moveEntity $14,$0,$1,$A
		endMove $8080
		setCamDest $14,$A
		moveEntity $14,$0,$0,$4
		endMove $8080
		setCamDest $1B,$A
		moveEntity $14,$0,$3,$5
		endMove $8080
		setCamDest $1B,$F
		moveEntity $14,$0,$2,$13
		endMove $8080
		setCamDest $9,$F
		moveEntity $14,$0,$1,$A
		endMove $8080
		setCamDest $9,$5
		moveEntity $14,$0,$0,$D
		endMove $8080
		setCamDest $14,$5
		moveEntity $14,$0,$3,$7
		endMove $8080
		setCamDest $14,$C
		csWait $3C
		setEntityDest $14,$1A,$12
		setFacing $14,$2
		nextSingleText $80,$14  ; "Excuse me, are you{N}{LEADER} of Granseal?{W1}"
		moveEntity $7,$FF,$0,$2
		endMove $8080
		setFacing $7,$3
		setFacing $14,$1
		nextSingleText $0,$7    ; "Yes, he's {LEADER},{N}but who are you?{W1}"
		nextSingleText $80,$14  ; "I'm {NAME;20} of Bedoe.{W1}"
		entityShiver $7
		nextSingleText $0,$7    ; "Bedoe?{W1}"
		nextSingleText $80,$14  ; "{LEADER} saved my life{N}there.{W1}"
		setActscript $7,$FF,eas_Jump
		setActscript $7,$FF,eas_Jump
		nextText $0,$7          ; "{LEADER} saved...{W2}"
		nextSingleText $0,$7    ; "Oh, yes!  I remember!{W1}"
		nextText $80,$14        ; "You remember me?{W2}"
		nextSingleText $80,$14  ; "Let me thank you.{N}May I go with you?{W1}"
		moveEntity $7,$FF,$2,$1
		moreMove $3,$1
		moreMove $8,$28
		endMove $8080
		moveEntity $7,$FF,$1,$1
		moreMove $0,$1
		moreMove $B,$28
		endMove $8080
		moveEntity $7,$FF,$2,$1
		moreMove $3,$1
		moreMove $8,$28
		endMove $8080
		setFacing $14,$2
		nextSingleText $0,$7    ; "You grew up quickly, huh?{W1}"
		nextSingleText $80,$14  ; "Yeah, I learned how to fight.{W1}"
		join $14
		followEntity $7,$0,$2
		followEntity $1F,$7,$2
		followEntity $14,$0,$5
		csc2F $14,$0
		csc_end
