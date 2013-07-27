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
  ; Our base case
  (define len  (string-length str))
  (cond ((= pos len ) -1)
        ((< pos len) 
            ;(string-ref str pos)
          (define isE? (equal? "e"  (string (string-ref str pos))))
          (cond 
            (isE?  pos)
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

