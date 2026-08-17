# shrike_lite_projects
shrike lite FPGA projects are available in this repository  ( use only 3.3v as input voltage to shrike lite FPGA GPIO pins )

To write verilog code for this Shrike Lite FPGA u need
1) "Go Configure Software Hub"
   
   https://www.renesas.com/en/software-tool/go-configure-software-hub#overview
   
3) for simulation of verilog code in "Go Configure Software Hub software", u need icarus verilog
   
   https://bleyer.org/icarus/
   
4) use this renesas manual for configuring icarus verilog in  "Go Configure Software Hub software"
   
   https://www.macnica.co.jp/en/business/semiconductor/articles/renesas/146328/
   
5) shrike lite fpga full adder verilog code demo
  
   https://www.youtube.com/watch?v=Ufa__6MhEqY
   
8) use thonny ide software ( https://thonny.org ) for uploading bitstream file into shrike lite fpga

   https://www.youtube.com/watch?v=OT5bMX5sSow



   ----------------------------------------------------------------------------------------------------
# SHRIKE LITE FPGA I-O MAPPING PIN CONFUSION

   <img width="1599" height="925" alt="shrike lite FPGA i-o mapping" src="https://github.com/user-attachments/assets/ffdb987c-0442-4904-91ab-ac748543f977" />
   

 1) FPGAIO2 is the GPIO2
   
 2) pin15 pins the physical pin on the ic

 3) so GPIO2 is the pysical oin 15 on the ic

 4) and we used FPGAIO to distinguish between fpga and rp2040 io otherwise it will be confusing.

   ----------------------------------------------------------------------------------------------------


The below table has FPGA (CPU) chip pins which are internally connected to RP2040 microcntroller


<img width="778" height="633" alt="shrike lite pin out table" src="https://github.com/user-attachments/assets/e450d643-9795-4f01-ad1c-398f36952c2f" />

