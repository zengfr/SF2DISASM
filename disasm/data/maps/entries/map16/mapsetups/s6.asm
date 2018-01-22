
; ASM FILE data\maps\entries\map16\mapsetups\s6.asm :
; 0x51F76..0x52284 : 

; =============== S U B R O U T I N E =======================================

ms_map16_InitFunction:
		
		trap    #CHECK_FLAG
		dc.w $298               ; set after the Galam guards catch you sneaking around, but before battle
		beq.s   return_51F86
		move.w  #$91,d0 
		jsr     MoveEntityOutOfMap
return_51F86:
		rts

	; End of function ms_map16_InitFunction

cs_51F88:       textCursor $3C2
		nextSingleText $C0,$80  ; "Listen, everybody!{N}We're going to Granseal!{W1}"
		setFacing $5,$3
		setFacing $0,$3
		setCamDest $C,$B
		nextSingleText $C0,$5   ; "We're too late!{W1}"
		nextText $C0,$80        ; "As you may know, my{N}messenger was killed!{W2}"
		nextText $C0,$80        ; "Granseal must have done{N}this.{W2}"
		nextSingleText $C0,$80  ; "So we're invading them to{N}retaliate!{W1}"
		nextSingleText $FF,$FF  ; "Murmur...murmur....{W1}"
		csWait $14
		setFacing $1C,$0
		csWait $14
		setFacing $1C,$2
		csWait $14
		setEntityDest $1C,$10,$11
		nextText $0,$1C         ; "Quiet!  Everybody listen{N}to me!{W1}"
		nextText $0,$1C         ; "I also don't understand{N}this march!{W2}"
		nextText $0,$1C         ; "But, King Galam must{N}have a good reason!{W2}"
		nextText $0,$1C         ; "I believe the King!{N}How about you?{N}Anyone disagree?{W1}"
		csWait $5
		setActscript $1C,$0,eas_461B6
		csWait $3C
		nextSingleText $0,$1C   ; "No?  Good!{W1}"
		setFacing $1C,$3
		csWait $14
		setFacing $1C,$1
		csWait $14
		setEntityDest $1C,$10,$10
		setFacing $1C,$0
		setFacing $80,$2
		csWait $14
		setFacing $1C,$3
		nextSingleText $C0,$80  ; "Well done, {NAME;28}.{W1}"
		setFacing $80,$3
		nextSingleText $0,$1C   ; "King Galam, victory is{N}ours!{W1}"
		nextSingleText $C0,$80  ; "Guards!{N}Open the gate!{N}Lower the bridge!{W1}"
		csWait $1E
		playSound SFX_BIG_DOOR_RUMBLE
		csWait $96
		setFacing $80,$2
		nextSingleText $C0,$80  ; "{NAME;28}, prove your{N}allegiance.{W1}"
		setFacing $1C,$0
		nextSingleText $0,$1C   ; "What do you mean?{W1}"
		nextSingleText $C0,$80  ; "Show no mercy!{W1}"
		nextSingleText $0,$1C   ; "My Lord...{W1}"
		nextSingleText $C0,$80  ; "Now, go!{W1}"
		setFacing $80,$3
		setFacing $1C,$3
		csWait $14
		setCamDest $C,$12
		setEntityDest $80,$11,$17
		setEntityDest $1C,$11,$11
		setEntityDest $1C,$11,$16
		setEntityDest $1C,$12,$18
		setFacing $80,$1
		setFacing $1C,$1
		setFacing $81,$3
		setFacing $82,$3
		setFacing $83,$3
		setFacing $84,$3
		setFacing $85,$3
		setFacing $86,$3
		setFacing $87,$3
		setFacing $88,$3
		setFacing $89,$3
		setFacing $8A,$3
		setFacing $8B,$3
		setFacing $8C,$3
		setFacing $8D,$3
		setFacing $8E,$3
		setFacing $8F,$3
		setFacing $90,$3
		nextSingleText $0,$80   ; "Crush Granseal!{W1}"
		moveEntity $1C,$0,$3,$7
		endMove $8080
		moveEntity $80,$0,$3,$7
		endMove $8080
		moveEntity $81,$0,$3,$7
		endMove $8080
		moveEntity $82,$0,$3,$7
		endMove $8080
		moveEntity $83,$0,$3,$7
		endMove $8080
		moveEntity $84,$0,$3,$7
		endMove $8080
		moveEntity $85,$0,$3,$7
		endMove $8080
		moveEntity $86,$0,$3,$7
		endMove $8080
		moveEntity $87,$0,$3,$7
		endMove $8080
		moveEntity $88,$0,$3,$7
		endMove $8080
		moveEntity $89,$0,$3,$7
		endMove $8080
		moveEntity $8A,$0,$3,$7
		endMove $8080
		moveEntity $8B,$0,$3,$7
		endMove $8080
		moveEntity $8C,$0,$3,$7
		endMove $8080
		moveEntity $8D,$0,$3,$7
		endMove $8080
		moveEntity $8E,$0,$3,$7
		endMove $8080
		moveEntity $8F,$0,$3,$7
		endMove $8080
		moveEntity $90,$0,$3,$7
		endMove $8080
		setFacing $5,$3
		setFacing $0,$3
		setCamDest $C,$5
		hideEntity $1C
		hideEntity $80
		hideEntity $81
		hideEntity $82
		hideEntity $83
		hideEntity $84
		hideEntity $85
		hideEntity $86
		hideEntity $87
		hideEntity $88
		hideEntity $89
		hideEntity $8A
		hideEntity $8B
		hideEntity $8C
		hideEntity $8D
		hideEntity $8E
		hideEntity $8F
		hideEntity $90
		nextText $C0,$5         ; "They've gone.{N}The war begins.{W1}"
		setFacing $5,$2
		setFacing $0,$0
		nextText $C0,$5         ; "So, what should we do?{N}Are you still going to{N}Granseal?{W1}"
		nextText $C0,$5         ; "You're serious?{N}Do you think you can stop{N}the war?{W2}"
		nextSingleText $0,$5    ; "I will leave you once I'm{N}outside the gate!{W1}"
		csc_end
cs_521BA:       textCursor $3DA
		entityPosDir $92,$11,$10,$1
		entityPosDir $93,$11,$F,$3
		nextSingleText $0,$91   ; "You!{W1}"
		setCamDest $0,$11
		nextSingleText $0,$91   ; "How did you get out?{W1}"
		setActscript $5,$FF,eas_Init
		setActscript $0,$FF,eas_Init
		setEntityDest $0,$3,$13
		setEntityDest $5,$4,$13
		nextSingleText $0,$5    ; "I...{W1}"
		nextSingleText $0,$92   ; "Wow, great jewel!{W1}"
		setCamDest $C,$A
		nextSingleText $0,$93   ; "Oh, this?{N}The King gave it to me!{W1}"
		nextSingleText $0,$92   ; "Because you captured that{N}rat?{W1}"
		setCamDest $0,$D
		setFacing $0,$0
		setFacing $5,$2
		nextText $0,$93         ; "Yes.  I presented them to{N}King Galam.{W2}"
		nextSingleText $0,$93   ; "He was so kind to give me{N}one of the pair, the Jewel{N}of Light!{W1}"
		moveEntity $0,$0,$0,$1
		endMove $8080
		moveEntity $5,$FF,$0,$1
		endMove $8080
		nextSingleText $0,$91   ; "Wait!{W1}"
		setFacing $0,$3
		setFacing $5,$3
		setCamDest $0,$12
		nextSingleText $0,$91   ; "How did you escape?{W1}"
		setFacing $0,$0
		setFacing $5,$2
		csWait $14
		setFacing $0,$3
		setFacing $5,$3
		setEntityDest $91,$9,$17
		setActscript $91,$FF,eas_Jump
		setActscript $91,$FF,eas_Jump
		nextSingleText $0,$91   ; "Intruders!  Intruders!{N}Arrest them!{W1}"
		setStoryFlag $5         ; Battle 5 unlocked
cs_5227C:       mapSysEvent $10,$0,$0,$0
		csc_end
