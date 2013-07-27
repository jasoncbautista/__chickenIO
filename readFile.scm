(use utils)
; Fetching our input file
(define fileString (read-all "file.txt") )

; Print new line
(define (println value)
  (write value)
  (newline)
)

; Now a function to take in a string
; and go through each character till finding e
(define (oneByOne str pos)
  (define len  (string-length str))
  (cond ((= pos len ) -1) ; Our base case
        ((< pos len) 
          ; We figure out if this is what we are looking for (e): 
          (define isE? (equal? "e"  (string (string-ref str pos))))
          (cond 
            (isE?  pos)
            ; We keep looking...
            (else (oneByOne str (+ pos 1)))
          )
        )
        (else -1)
  )
)

; SImply calls the recursive funciton and
; starts the position at zero
(define (findE str)
   (oneByOne str 0)
)

; Testing our function: 
(newline)
(write "position: ")
(newline)
(println (findE fileString))
(newline)

