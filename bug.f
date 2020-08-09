         SUBROUTINE F1()
         DOUBLE PRECISION WORK(2**18)
* Use a smaller size here and we don't get read errors
         DOUBLE PRECISION WORK(2**17)
         CALL F2(WORK)
         END

         SUBROUTINE F2(WORK)
         DOUBLE PRECISION WORK(*)
         END
