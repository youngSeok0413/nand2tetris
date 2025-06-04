xx = xor_gate

TARGET = $(xx)_sim
SOURCE = $(wildcard *.v)
VCD_FILE = $(xx).vcd

all : 
	echo $(SOURCE)
	iverilog -o $(TARGET) $(SOURCE)

run : 
	vvp $(TARGET)
	gtkwave $(VCD_FILE)

.PHONY : clean
clean :
	rm -rf $(TARGET) $(VCD_FILE)