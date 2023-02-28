program variables
  
  implicit none
 
  integer :: i
  integer(2) :: j
  integer(4) :: k
  integer(8) :: l
 
  real :: a
  real(4) :: b
  real(8) :: c
  real(10) :: d
 
  write(*,*)'                integer    integer(2)    integer(4)    integer(8)'
  write(*,*)'Largest value:',huge(i),huge(j),huge(k),huge(l)
  write(*,*)'Exponent Range:',range(i),range(j),range(k),range(l)
  write(*,*)''
  write(*,*)'                 real           real(4)        real(8)         real(10)'
  write(*,*)'Largest value: ', huge(a), huge(b), huge(c), huge(d)
  write(*,*)'Smallest value: ', tiny(a), tiny(b), tiny(c), tiny(d)
  write(*,*)'Exponent range:',range(a),range(b),range(c),range(d)
 
end program variables
