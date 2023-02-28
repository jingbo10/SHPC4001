program read

implicit none
Integer :: i
Real :: a, total
open(unit=1,file='test.dat',action='read')

total=0.0;
do i=1,1000
read(1,*,end=10)a
total = total + a
end do

10 write(*,*)'The total is', total
end program read
