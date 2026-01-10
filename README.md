# VELSYNC_VCD_01

This project implements a 4-bit ALU in Verilog that performs arithmetic and logical operations based on a control signal. The design is verified using a testbench that automatically tests all input combinations and validates the output using behavioral simulation in Xilinx ISE.

Implemented Components
1. Adders
The foundation of the arithmetic circuit was built using several types of adders.

Half Adder: Implemented to add two single bits and produce a sum and a carry bit. The implementation uses one XOR gate and one AND gate.
Full Adder: Built using two half adders and one OR gate. It is a combinational circuit that sums three inputs (A, B, Cin).
4-bit Ripple-Carry Adder: A serial adder created by chaining four full adders together. This component calculates the arithmetic sum of two 4-bit binary numbers.
2. Arithmetic Unit
The arithmetic unit is responsible for performing various arithmetic functions. It uses a "B-input-logic" component to preprocess one of the input words based on control signals.

B-Input Logic: A preprocessing component that determines the arithmetic operation to be performed. It takes the B input word and modifies it according to the select signals S0 and S1.
1-bit & n-bit Arithmetic Unit: A 1-bit version was first created and tested, then scaled to an n-bit version. The unit supports operations such as TRANSFER, INCREMENT, ADD, SUBTRACT, and DECREMENT.
3. Logical Unit
The logical unit provides basic bitwise logic operations on the inputs A and B.

1-bit & n-bit Logical Unit: A 1-bit unit was implemented first and then expanded to an n-bit version.
Supported Operations: The unit performs A AND B, A OR B, A XOR B, and NOT A, based on the values of select signals S0 and S1.
4. Multiplexer (2:1)
A 2:1 multiplexer was implemented to switch the final output between the result of the arithmetic unit and the logical unit. This selection is controlled by the mode select signal S2.

5. Final 4-bit ALU
All the previously designed components were assembled to create the final, functional ALU.

1-bit ALU: A 1-bit version of the complete ALU was first constructed and verified.
4-bit ALU: The verified 1-bit ALU was then scaled to create the final 4-bit ALU.
Design & Testing
For every exercise, the project followed a strict development and verification process as required by the guidelines:

Designing the circuit as a block diagram.
Implementing the circuit in Logisim.
Testing the circuit's functionality with (partial) Test Vectors.
Providing meaningful chronograms to visualize the circuit's behavior.
