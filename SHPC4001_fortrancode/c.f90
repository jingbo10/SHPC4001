Program Precision2

!  demonstrates the value of DOUBLE PRECISION variables

implicit none
real :: x
real(8) :: y
integer i

!  If we start with one, and add one-hundred-millionth 
!  One-hundred-million times, what do we get?

x=1.0
Y=1.0
do i=1,100000000
x=x+0.00000001
y=y+0.00000001
end do
write(*,*)x, y

end Program Precision2
