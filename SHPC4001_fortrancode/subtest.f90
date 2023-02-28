program main

implicit none
real:: a, b, c

a=2.
b=10.+ a
call sub(a,b,c)
write(*,*)a,b,c     ! b is not changed by sub

contains

 subroutine sub(x,y,z)

  real,intent(in):: x,y  ! x, y are alias for a, b
  real,intent(out):: z   ! z is alias for c
  real:: b               ! make b local variable

! x = y**3 + 1.0    ! invalid statement
  b = y**3          ! b is different from main's b
  z = x + b         ! c from PROG gets new value

 end subroutine sub

end program main
