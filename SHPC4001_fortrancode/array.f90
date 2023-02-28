program array

implicit none
integer :: a(5,2),b(2)

b=(/1,2/)
a=reshape((/0,1,2,3,4,5,6,7,8,9/),shape(a))
write(*,"(5i3)") a 
write(*,"(2i3)") transpose(a)
write(*,*)"size(a):", size(a)
write(*,*)"shape(a):", shape(a)
write(*,*)"product & sum:", product(a),sum(a)
write(*,*)"max & min:", maxval(a),minval(a)
write(*,"(a13,5i3)")"matmul(a,b):", matmul(a,b) 

end program array

