
program decay
implicit none
integer i, n, num
real*4 time, tau, dt, final_answer, N_plus, N_zero, N_minus, N0, Nt

open(12,file='errord2.dat')
open(11,file='errord1.dat')
open(10,file='errord0.dat')
tau = 5.0
final_answer = 100.0 * exp(-1.0)

! first order

dt = 1.0
do n = 1, 10
  N0 = 100.0
  num = tau/dt
  do i = 0, num
      Nt =  N0 * (1.0 - dt/tau)
      N0= Nt
  enddo
   write(10,*) dt,abs(Nt-final_answer)/final_answer
   dt = dt * 0.5
enddo

dt = 1.0
do n = 1, 20
  N0 = 100.0
  num = tau/dt
  do i = 0, num
      Nt =  N0 * (1.0 - dt/tau)
      N0= Nt
  enddo
   write(11,*) dt,abs(Nt-final_answer)/final_answer
   dt = dt * 0.5
enddo


!  second order


dt = 1.0
do n = 1, 20
  N_minus = 100.0
  N_zero = N_minus * (1.0 - dt/tau)
  num = tau/dt
  do i = 2, num
      N_plus = N_minus - N_zero*2.0*dt/tau
      N_minus= N_zero
      N_zero = N_plus
   enddo
   write(12,*) dt, abs(N_plus-final_answer)/final_answer
   dt = dt * 0.5
enddo


end
                        
