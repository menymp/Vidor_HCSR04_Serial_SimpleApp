# Vidor_HCSR04_Serial_SimpleApp
Simple fpga app that outputs the tick count relatet to the distance over serial.
Thanks to philippe for the excelent reverseByte tool for uploading 

More at: https://systemes-embarques.fr/wp/

File includes template and bat script for load preparation file

Once syntetized a project the steps for upload to the board consist of:

1- Double click on GenerarBitStream.bat file

2- Press a key and wait, do it again until command promp closes

3- Go to EmptySketch file and open Arduino EmptySketch.ino

4- Connect board, set the serial port and upload the file.

the input adc module is HCSR04

the output is an output serial pin that works at 9600 bps

electrical diagram comming soon...

ToDo list:

Incorporate electrical diagrams
