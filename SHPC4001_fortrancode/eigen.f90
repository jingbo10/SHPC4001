program eigen 
! 
! Demonstrate how to call an external library 
! 

implicit none 

interface 
subroutine zgeev(JOBVL, JOBVR, N, A, LDA, W, VL, LDVL, VR, LDVR, WORK, & 
& LWORK, RWORK, INFO) 
character :: JOBVL, JOBVR 
integer :: INFO, LDA, LDVL, LDVR, LWORK, N 
real(8) :: RWORK(*) 
complex(8) :: A(*), VL(*), VR(*), W(*), WORK(*) 
end subroutine zgeev 
end interface 

complex(8), dimension(:, :), allocatable :: array, leftvectors, rightvectors 
complex(8), dimension(:), allocatable :: eigenvalues, work1 
real(8), dimension(:), allocatable :: work2 
real(8), dimension(2) :: rand 
integer :: n, i, j, info 

write(*,*)'input: vector dimension?'
read(*,*) n
allocate(array(n, n), eigenvalues(n), work1(2*n), work2(2*n), & 
& leftvectors(n, n), rightvectors(n, n)) 

do j = 1, n 
do i = 1, n 
call random_number(rand) 
array(i, j) = cmplx(rand(1), rand(2)) 
end do 
end do 

call zgeev('V', 'V', n, array, n, eigenvalues, leftvectors, n, rightvectors, & 
& n, work1, 2*n, work2, info) 

write(*,*) 'eigenvalues of the matrix :'
write(*,10) eigenvalues
write(*,*) 'right eigenvectors :' 
write(*,10) rightvectors     
10 format("(",f12.4,",",f12.4,")")

!  results agree with Mathematica

end program eigen 

