program arrayshape

implicit none
integer, dimension(40) :: x
integer, dimension(40,5) :: y
integer :: i, j

do i=1,40
  x(i)=i**2
  do j=1,5
    y(i,j)=i+j**2
  end do
end do

call sub(x,y)

contains

 subroutine sub(a,b)

 integer,intent(in):: a(40),b(40,5)
 integer :: c

  c = sum(a) + sum(b)
  write(*,*)size(a), size(b), c

  end subroutine sub

end program arrayshape

