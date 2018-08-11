; The MIT License (MIT)

; Copyright (c) 2018 nabijaczleweli

; Permission is hereby granted, free of charge, to any person obtaining a copy of
; this software and associated documentation files (the "Software"), to deal in
; the Software without restriction, including without limitation the rights to
; use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
; the Software, and to permit persons to whom the Software is furnished to do so,
; subject to the following conditions:

; The above copyright notice and this permission notice shall be included in all
; copies or substantial portions of the Software.

; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
; FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
; COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
; IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
; CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


#define PORTB 0x17
#define DDRB  0x18


; Set PB0 as high output
ldi r21, 1
out PORTB, r21
out DDRB, r21

; Cache a 1 for xoring with current state later
ldi r20, 1

; Clear length cycle counter, needs to start at 1 because we start with an increment in the inner loops
ldi r19, 1
.toggle_increase_cycle:
	eor r21, r20
	out DDRB, r21

	; Clear sleep cycle 0 counter
	clr r18
	.sleep_cycle_0:
		inc r18

		; Clear sleep cycle 1 counter
		clr r17
		.sleep_cycle_1:
			inc r17

			cp r17, r18
			brne .sleep_cycle_1

		cp r18, r19
		brne .sleep_cycle_0

	inc r19
	rjmp .toggle_increase_cycle
