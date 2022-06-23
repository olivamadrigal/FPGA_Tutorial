# FPGA_Tutorial
FPGA Functional Verification, Implementation, &amp; Hardware Validation 

This tutorial walks you through the hardware design & validation flow starting from design entry to hardware validation

Instructions and source code for lab was provided as a tutorial in CMPE 125 by Professor Donald Hung. Source includes fix to segment signals to display corresponding number. Input signals (a , b, c) are mapped in that same order to DIP switches.

We use “VOTING RULE” example

Technology Stack: 
Windows 7
ISE Design Suite 14.7
Digilent Adept
Nexys3 FPGA

Adept USB cable [USB type A to USB micro-B] (use this to power on the board); You will also need to flick the power on switch onboard.

step 0: Create Project

See Settings.png for required settings

step 1: Hardware Design

Microarchitecture of the system; we design the hardware for a system (algorithm) similar to
how we design software (diagram structure chart etc.) 

System.png shows overall system design [provided]

step 2: Design Entry

Input design using Verilog HDL into ISE EDA (analog of software IDE) [all the .v Verilog files provided]

We realize the design via FPGA or ASIC similar to how we code an algorithm once we have developed it.

step 3: Functional Verification

Self-checking test bench and simulator or test vectors with memory files and simulator; Can view waveforms. Similar to how we do unit testing in software.

step 4: FPGA implementation

Must configure user constraint file (UCF) which maps the I/O signals of system we designed to specific components (pins) on the FPGA board 
(design specific… what you select).

Right-click top module and select “Implement Design” which will run through all the steps of synthesis, translate, map, place, & route.

step 5: Program the FPGA

Run “Generate Programming File” which will generate a binary file of the design.

Open Digilent Adept application, browse for the “top_level_name.bit”  file in your project folder and select “Program” on Digilent.

FPGA is comprised of arrays of CLBs.. combinational logic blocks though which our HDL form of the design gets materialized. 

Once programmed successfully, you can do hardware FPGA validation. 

Manual test with the three right most DIP switches (from left to right: “a”, “b”, “c”) and observe the corresponding display on the leftmost (7seg LED 0).

