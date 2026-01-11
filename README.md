# 🚀 32-bit ALU (Arithmetic Logic Unit) in Verilog HDL

![Figure 1: ALU Block Diagram](images/alu32.jpg)  
*Figure 1: ALU Block Diagram*

---

## Table of Contents

- [About](#about)
- [Features](#features)
- [Architecture](#architecture)
- [Simulation & Waveforms](#simulation--waveforms)
- [References](#references)
- [How to Run](#how-to-run)
- [License](#license)
- [Contact](#contact)

---

- **8-bit ALU**  
  [YouTube Demo](https://youtube.com/shorts/nqqnMJH8ioI?si=xn8rYsjJDMGVIPD3)

---

## About

This project implements a modular **32-bit ALU** in Verilog HDL, supporting 32 unique operations.  
It demonstrates practical digital design skills, modular code structure, and simulation proficiency—demonstrates practical digital design skills relevant to FPGA and VLSI roles for **FPGA**, **VLSI**, or **hardware design roles**.

- **Inputs:** Two 32-bit operands
- **Outputs:** 32-bit result, Carry flag, High/Low outputs for multiplication
- **Extensible:** Easily add status flags (Zero, Negative, Overflow, Parity) for CPU integration

---

## Features

- **Arithmetic:** Addition, Subtraction, Multiplication (full 64-bit result), Division, Increment, Decrement, Two's/One's Complement  
- **Logical/Bitwise:** AND, OR, NAND, NOR, XOR, XNOR, Shifts  
- **Comparison:** Greater-than, Equality  
- **Code Conversion:** Binary ↔ Gray, Gray ↔ Binary  
- **Utilities:** Bit reversal, Parity checks, Reset  

---

## Architecture

- **Main ALU Code:** [`main_alu_code.v`](main_alu_code.v)
- **Testbench:** [`alu_tb.v`](alu_tb.v)

Each function is implemented as a separate, synthesizable module for clarity and scalability.

---

## Simulation & Waveforms

**Figure 2: RTL Schematic**  
![RTL Schematic](images/alu_rtl.jpg)

&nbsp;

**Figure 3: Xilinx ISim Simulation**  
![Xilinx Simulation](images/alu_xilinx_wave.jpg)

&nbsp;

**Figure 4: GTKWave Output**  
![GTKWave Output](images/gtkwave_alu32.png)

&nbsp;

**Figure 5: Icarus Verilog Testbench Output**  
![Icarus Verilog Output](images/iverilog_output.png)

&nbsp;

*All images above validate correct ALU operation and waveform activity for all ops.*

---

## References

- [`main_alu_code.v`](main_alu_code.v) — All ALU operations and modules  
- [`alu_tb.v`](alu_tb.v) — Testbench for automated simulation and waveform dump  
- **Academic Courses:**
  - [NPTEL: Digital Design (EE180)](https://onlinecourses.nptel.ac.in/noc25_ee180/preview)
  - [NPTEL: VLSI Design (CS155)](https://onlinecourses.nptel.ac.in/noc25_cs155/preview)
- **Research Papers:**
  - [A 32-bit ALU for high-performance embedded processors](https://ieeexplore.ieee.org/document/10968047)
  - [Design and Implementation of ALU Based on FPGA](https://ieeexplore.ieee.org/document/10940212)
  - [Design of high speed and area efficient ALU using Verilog](https://ieeexplore.ieee.org/document/9696935)

---

## How to Run

1. **Clone the Repository**
    ```sh
    git clone https://github.com/yourusername/ALU_32_BIT.git
    cd ALU_32_BIT
    ```

2. **Compile & Simulate (with Icarus Verilog)**
    ```sh
    iverilog -o alu32_out alu_tb.v main_alu_code.v
    vvp alu32_out
    ```

3. **View Waveforms**
    ```sh
    gtkwave alu32.vcd
    ```
    *(make sure your testbench generates the file `alu32.vcd`; change if different)*

---

## License

Licensed under the [MIT License](LICENSE).

---

## Contact

- **LinkedIn:** [Tejas R Mallah](https://www.linkedin.com/posts/tejas-r-mallah-28052b283_verilog-fpga-digitaldesign-activity-7364343834392113152-s981?utm_source=share&utm_medium=member_desktop&rcm=ACoAAET0mcABoSmVvowkUz7qcSZkG2bhRVZnDQ4)
- **Email:** tejasmallah@gmail.com

---

## Join the Conversation!

💡 _Always open to feedback, collaboration, and exciting roles in digital hardware, FPGA, and VLSI design!_

---

```
#Verilog #FPGA #DigitalDesign #HardwareDesign #RTL #Xilinx #IcarusVerilog #ALU #EDA #NPTEL #GTKWave
```

---

**With these changes, your repo and README will look professional and be ready for both academic and recruiter screening!**  
Let me know if you want further tweaks or have more projects.
