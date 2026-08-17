# shrike_lite_projects
shrike lite FPGA projects are available in this repository  ( use only 3.3v as input voltage to shrike lite FPGA GPIO pins )

To write verilog code for this Shrike Lite FPGA u need
1) "Go Configure Software Hub" 
   https://www.renesas.com/en/software-tool/go-configure-software-hub#overview
   
2) for simulation of verilog code in "Go Configure Software Hub software", u need icarus verilog
   https://bleyer.org/icarus/
   
3) use this renesas manual for configuring icarus verilog in  "Go Configure Software Hub software"
   https://www.macnica.co.jp/en/business/semiconductor/articles/renesas/146328/
   
4) shrike lite fpga full adder verilog code demo https://www.youtube.com/watch?v=Ufa__6MhEqY
   
5) use thonny ide software ( https://thonny.org ) for uploading bitstream file into shrike lite fpga
   https://www.youtube.com/watch?v=OT5bMX5sSow



   ----------------------------------------------------------------------------------------------------
   SHRIKE LITE FPGA I-O MAPPING PIN CONFUSION

   FPGAIO2 is the GPIO2
   pin15 pins the physical pin on the ic
   so GPIO2 is the pysical oin 15 on the ic
   and we used FPGAIO to distinguish between fpga and rp2040 io otherwise it will be confusing.

   <img width="1280" height="960" alt="SHRIKE LITE FPGA CPU PINS INTERNAL CONNECTION TABLE" src="https://github.com/user-attachments/assets/99ec59a3-3f31-4151-8422-b67655731168" />

