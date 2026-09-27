
    sbi DDRB,5

LOOP:
    ; LED ON
    sbi PORTB,5
    rcall DELAY
    ; LED OFF
    cbi PORTB,5
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
