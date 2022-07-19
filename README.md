### Introduction
This project is a 32-bit single-cycle CPU design based on MIPS instruction set and Vivado, and use Xilinx xc7a100tfgg484 board to download and run the CPU. 

When designing this project, my team focused on the controller module, instruction fetch module, memory module and the top module. We referred some key points from the textbook, which include the databus, decoder, IO interface, and ALU design. After proper simulation, we download the project to the borad and kick start the CPU.

When the system on the borad running, this CPU will run the machine code from RAM. The machine code was created by Minisys1Av2.2 assembler. Therefore, I programmed some example to control the switch and the LED from the board, and translated it into machine code by Minisys1Av2.2 assembler. Then import these code into RAM and compile the whole CPU by Vivado.


### CPU Design

Here is the databus of MIPS instruction set

<div align="center">
  <img src="https://github.com/Jingxiang-Zhang/Vivado_MIPS_CPU/blob/main/img/Databus.png">
</div>

According to the databus and MIPS, we can design the Verilog program in Vivado. This is some code segment of ALU design

<div align="center">
  <img src="https://github.com/Jingxiang-Zhang/Vivado_MIPS_CPU/blob/main/img/ALU_segment.png">
</div>

Click [here](https://github.com/Jingxiang-Zhang/Vivado_MIPS_CPU/blob/main/Vivado-MIPS%20CPU.pdf) to see the detail of the whole CPU design.

### Assembly Program

This is a original code multiplication program. It reads two number from the switch, and calculate the multiplication by ALU. Finally, it sends and shows the result in LED.

<div align="center">
  <img src="https://github.com/Jingxiang-Zhang/Vivado_MIPS_CPU/blob/main/img/positive_code_multiplication.png">
</div>

<div align="center">
  <img src="https://github.com/Jingxiang-Zhang/Vivado_MIPS_CPU/blob/main/img/LED.png">
</div>
