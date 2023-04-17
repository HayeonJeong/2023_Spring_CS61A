(define (ascending? asc-lst)
    (cond ((null? asc-lst) #t)
          ((null? (cdr asc-lst)) #t)

          ((<= (car asc-lst) (car (cdr asc-lst)))
           (ascending? (cdr asc-lst)))
           
          (else #f))
)


(define (my-filter pred s) 
    (cond ((null? s) '()')

          ((pred (car s))
            (cons (car s) (my-filter pred (cdr s))))
          
          (else (my-filter pred (cdr s)))
    )
)


(define (interleave lst1 lst2)
    (cond ((null? lst1) lst2)
          ((null? lst2) lst1)
          
          (else (cons (car lst1) (cons (car lst2) (interleave (cdr lst1) (cdr lst2)))))
    )
)


(define (no-repeats lst)
    (cond
        ((null? lst) '())
 
        ;filter 함수의 역할 = car과 같은 요소를 cdr에서 모두 제거.
        (else (cons (car lst) (no-repeats (
            filter (lambda (x) (not (= x (car lst)))) (cdr lst)))))
    )
)