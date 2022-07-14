This project is a 32-bit single-cycle CPU design based on MIPS instruction set and Vivado, and use Xilinx xc7a100tfgg484 board to download and run the CPU. 

When designing this project, my team focused on the controller module, instruction fetch module, memory module and the top module. We referred some key points from the textbook, which include the databus, decoder, IO interface, and ALU design. After proper simulation, we download the project to the borad and kick start the CPU.

When the system on the borad running, this CPU will run the machine code in the RAM. The machine code was created by Minisys1Av2.2 Assembler. Therefore, I programmed some example to control the switch and the LED from the board, and translated it into machine code by Minisys1Av2.2 Assembler. Then import these code into RAM and compile the whole CPU by Vivado.

To see more information, please read Vivado-MIPS CPU.pdf and guide book.pdf (pwd: cau2016)

