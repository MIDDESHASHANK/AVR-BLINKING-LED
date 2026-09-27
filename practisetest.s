.global practisetest
.text
practisetest:
    ; PB5 = output
    sbi 0x04,5

LOOP:
    ; LED ON
    sbi 0x05,5
    rcall DELAY
    ; LED OFF
    cbi 0x05,5
    rcall DELAY
    ; Repeat
    rjmp LOOP

DELAY:
    ldi r18, 21
D1:
    ldi r19, 255
D2:
    ldi r20, 255
D3:
    dec r20
    brne D3
    dec r19
    brne D2
    dec r18
    brne D1
    ret
