program third

implicit none

Integer :: i, j, m, n
Real :: a, b

! initialise variables

i=2
j=3

! exponential

m=2**i**j
n=2**j**i
write(*,*)m,n

! integer division  

a=i/j
b=real(i)/j
write(*,*)a,b


end program third

