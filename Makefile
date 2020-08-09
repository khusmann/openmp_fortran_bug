GXX = /usr/bin/g++
FC = /usr/bin/gfortran
OPENMP = -fopenmp # Comment this out and there's no more read errors

a.out: call_fortran.cpp bug.o
	$(GXX) bug.o call_fortran.cpp -o a.out -lgfortran
	valgrind ./a.out

bug.o: bug.f
	$(FC) $(OPENMP) bug.f -c -o bug.o

clean:
	rm bug.o a.out
