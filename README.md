# VELSYNC_VCD_01
This project implements a 4-bit ALU in Verilog that performs arithmetic and logical operations based on a control signal. The design is verified using a testbench that automatically tests all input combinations and validates the output using behavioral simulation in Xilinx ISE.

# Implemented Components
# 1. Adders 
 The foundation of the arithmetic circuit was built using several types of adders. 
 Half Adder: Implemented to add two single bits and produce a sum and a carry bit. The implementation uses one XOR gate and one AND gate.
 Full Adder: Built using two half adders and one OR gate. It is a combinational circuit that sums three inputs (A, B, Cin).
 4-bit Ripple-Carry Adder: A serial adder created by chaining four full adders together. This component calculates the arithmetic sum of two 4-bit binary numbers.
