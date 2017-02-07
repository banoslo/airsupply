WIRINGPI_DIR=sub/wiringPi
WIRINGPI_LIB=libwiringPi.so.2.39

MAKE=make

wiringPi:
	cd $(WIRINGPI_DIR)/wiringPi && $(MAKE) all 

main: main.cpp wiringPi
	g++ -o main main.cpp $(WIRINGPI_DIR)/wiringPi/$(WIRINGPI_LIB)

all: main
