program format

implicit none

INTEGER :: j
REAL :: x, y
CHARACTER(len=3) :: z

j=21; x=1.123; y=32.21; z='abc'
Print *, j, x, y, z
! or
Print '(i10, 2f10.3, a10)', j, x, y, z
! or
Print 12, j, x, y, z
12 format(i10, 2f10.4, a10)

end program format
