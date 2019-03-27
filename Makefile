main: main.o print.o
	@echo "linking main.exe"
	@g++ -o main main.o print.o
	@echo "executing main.exe"
	@echo "---------------------------"
	@./main

	@make clean

main.o: main.cpp
	@echo "making main.o"
	@g++ -c main.cpp

print.o: print.cpp
	@echo "making print.o"
	@g++ -c print.cpp

clean:
	@-rm -f print.o main.o main
	@echo "cleaned object files..."

	@touch print.cpp
