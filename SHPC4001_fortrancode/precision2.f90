Program Precision2

!  demonstrates the value of DOUBLE PRECISION variables

implicit none
real :: x
real(8) :: y, z
integer i

!  If we start with one, and add one-millionth a million
!  times, what do we get?

x = 1.
y = 1.
z = 1.

do i = 1, 1000000
  x = x + 0.000001
  y = y + 0.000001
  z = z + 0.000001d0
  if (i < 10) write(20,37)x,y,z
end do
37 format(3f14.7)
write(*,*)' Which is closer to two, '
write(*,*)x,' or', y,' or', z,'?'

end Program Precision2
