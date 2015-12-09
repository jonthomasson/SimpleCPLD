# SimpleCPLD

  This project was inspired by Bil Herd and his Hackaday article which chronicled his nifty breadboardable CPLD module. That article can be found here: http://hackaday.com/2015/10/28/programmable-logic-build-yourself-a-cpld-module/. Being new to pcb design, I took this as a learning challenge and thought that it would be fun to redesign the board a bit and make it fit within the confines of a standard 40 pin .6" dip package. The advantage of this design is that it could not only plug into a breadboard, but it could also allow the module to be inserted into a 40 pin socket in another board quite easily.
  
  To save space I switched to all smd components. I chose 0805 for the resistors, capacitors, and led because that is a nice easy size to still solder by hand. I also switched the cpld over to the tqfp package instead of the plcc, and got rid of the socket. To make access to the cpld's io pins easy, I rotated it 45 degrees and placed it towards the center of the board. I also rotated the JTAG connector to run the length of the board. These changes also allowed me to add labels next to all the IO pins, to make identification fast and easy.
  
  One caveat of this slim profile was that I needed to break up the pin headers a bit, creating a gap of 3 pins on 2 sides of the board, to accommodate the tqfp package. I was thinking that in a future revision I could expand the rows an additional .1" to possibly be able to fill in this gap. This would make the board too wide for a standard 40 pin socket however. But for my purposes this wasn't critical. 
  
  I modified Bil's original verilog project to work with the the pinout of the tqfp package and added it to the repository. For this board I also decided to use the 5v version of the MAX7000 series of CPLD found here: http://www.digikey.com/product-detail/en/EPM7064STC44-10N/544-2020-ND/1084671. I did this because I plan on incorporating this into a 6502 based project I'm working on and I already have 5v rails running to the board. But you could just as easily use the 3.3v version. 
  The BOM, Gerbers, Kicad project, as well as the Quartus test project are all attached to this repository. Hopefully someone finds them useful. 
  
![CPLD running in breadboard](https://goo.gl/photos/ygYxrFNBX6YgiUb57)
  
  Here's the board running.
  
![CPLD running in breadboard](https://goo.gl/photos/oLeFHTZYXAa9pU1C7)
  
And here you can see the output of the counter.
