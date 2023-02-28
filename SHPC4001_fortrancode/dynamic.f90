program dynamic_array 
implicit none 

!rank is 2, but size unknown 
real, dimension (:,:), allocatable :: darray 
integer :: s1, s2, i, j 

print*, "Enter the size of the array:" 
Read(*,*)s1, s2 
allocate( darray(s1,s2) ) ! allocate memory 

do i = 1, s1 
 do j = 1, s2 
  darray(i,j) = i*j 
  write(*,*)"darray(",i,",",j,") = ", darray(i,j)   
 end do 
end do 

deallocate (darray) 
end program dynamic_array

