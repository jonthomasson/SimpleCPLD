# SimpleCPLD

  This project was inspired by Bil Herd and his Hackaday article which chronicled his nifty breadboardable CPLD module. That article can be found here: http://hackaday.com/2015/10/28/programmable-logic-build-yourself-a-cpld-module/. Being new to pcb design, I took this as a learning challenge and thought that it would be fun to redesign the board a bit and make it fit within the confines of a standard 40 pin .6" dip package. The advantage of this design is that it could not only plug into a breadboard, but it could also allow the module to be inserted into a 40 pin socket in another board quite easily.
  
  To save space I switched to all smd components. I chose 0805 for the resistors, capacitors, and led because that is a nice easy size to still solder by hand. I also switched the cpld over to the tqfp package instead of the plcc, and got rid of the socket. To make access to the cpld's io pins easy, I rotated it 45 degrees and placed it towards the center of the board. I also rotated the JTAG connector to run the length of the board. These changes also allowed me to add labels next to all the IO pins, to make identification fast and easy.
  
  One caveat of this slim profile was that I needed to break up the pin headers a bit, creating a gap of 3 pins on 2 sides of the board, to accommodate the tqfp package. I was thinking that in a future revision I could expand the rows an additional .1" to possibly be able to fill in this gap. This would make the board too wide for a standard 40 pin socket however. But for my purposes this wasn't critical. 
  
  I modified Bil's original verilog project to work with the the pinout of the tqfp package and added it to the repository. For this board I also decided to use the 5v version of the MAX7000 series of CPLD found here: http://www.digikey.com/product-detail/en/EPM7064STC44-10N/544-2020-ND/1084671. I did this because I plan on incorporating this into a 6502 based project I'm working on and I already have 5v rails running to the board. But you could just as easily use the 3.3v version. 
  The BOM, Gerbers, Kicad project, as well as the Quartus test project are all attached to this repository. Hopefully someone finds them useful. 
  
![CPLD running in breadboard](https://lh3.googleusercontent.com/av8nnMcgbtgE0rYsiPDawZXr5bEB3fctsxjwloPS2dZgu7WzsU-C5SJQ33Zi-gZXLYaKjKc7YCEP9SrSuuUPOisLDz7epAx9fMI39tdgWG9M3-C_L56YumkcsnYBh6-0wIvMX-6juH9gop4cmmXxu89dKNCPwWUDl-Tt470s2g4zLUYoqcxj0XgXz0KaaKpQmClMx5MiEgSXljlspDsUE4krgCUJWIBd8q9NbHWQB60gitG7sVUSi0zc1USamrG46cgEt22aky6ZdlBfr8ie5xZkSuf0QfL9O0rt4t22h808J1cboFEdaOeu1vd6o0JbxZYf-tkaRE7A9O3ZLsrLJXoMj5h1KZAahEiojUX4-f7yVrNd2xg7OxJsP4RrP-3dkDOLUO7dsoxcJIljKtuDrJycQKY2L4tgGBhgHrkvOxwY_JaXwivN6ZLr-1R7zVnUk7DAh69Pm47XqD6_IyuFSZBtWfaqrDWm3AIQ2y-tzJIRtzXVvmUUcHxlPyclO0dZrhos9W2XXVUu5xkP7_KaqkApu5K_A3OBqm6xe2l6Y7K_=w874-h655-noo)
  
  Here's the board running.
  
![CPLD running in breadboard](https://lh3.googleusercontent.com/5-pRYN3cuG7GWGQIAWMh0qmwWP_v0dWWxngDNuo_-k2mjshwSoBfPTyezUBCkyKRG7GwKLM-pRc3-du1UbYyP1VUpqJJgnjcQvU9CuAcC1L4gcTM--z8wgUZvpxVEfw228bzqO_X-hHBmr5Rv4heUnFOi6UIdjScjiwHuM3QBeNq4EfitX9PY6mrbhgIhN5y3HNQtp4WksrwD3eZuJ6f5u3jqNOnDaeaBCgh9qML3On1zLXBCFTT6RaRYFtNJlrR_MxLayIN4Q1MBEh3YijAkGIw_m4liSJKvwqYLrGVRpWrePhGCZws0-gedY8ipB79NslNCuIyZMetCLS8gP37apHw7y-gQ0XSjPLDUeNRfAtsO25-SiT20wwWgRmNj7zIw25pnhTIzIJK1fUhz0x9H-DxrFgcSg8ENseJ_WMGltCZBoMYdiIwyQF65UqjCfYB-kRuhREjZ_X1OCXiV5dhooqyzfoAXB2Y76tbSMZZ8JLdj-gswfZCeG_HkqsKMJ-U_Jd9jddB6wvAj4P9Zb2Cs4RidAd0FCL6BLAGwBGdSxas=w874-h655-no)
  
And here you can see the output of the counter.
