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
 
        ;중복 판별은 첫 번째 함수 실행 시에 수행,
        ;이후의 재귀 호출에서는 중복 판별이 이미 수행된 결과 리스트에 새로운 항목들이 추가되는 것.
        (else (cons (car lst) (no-repeats (
            filter (lambda (x) (not (= x (car lst)))) (cdr lst)))))
    )
)