PROGRAM Temperature

   IMPLICIT NONE
   REAL :: F, FtoC

   WRITE(*,*)"Enter F:"
   READ *, F
   write(*,*)FtoC(F)

contains

  REAL FUNCTION FtoC(Temp)

  REAL, INTENT(IN) :: Temp

!  a=1.2
  FtoC = (Temp-32.0)/1.8

  END FUNCTION FtoC

END PROGRAM Temperature

