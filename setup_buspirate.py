import serial
import sys

dev = sys.argv[1] if len(sys.argv) > 1 else "/dev/ttyUSB0"
print "using "+dev
#set buspirate to 38400 baud
ser = serial.Serial(dev, 115200, timeout=0.05)
ser.write('b7\n')
print "".join(ser.readlines())
ser.baudrate = 38400
ser.write(' ')
commands = ['m3','7','1','1','1','2', '(3)']
for cmd in commands:
    ser.write(cmd + '\n')
    print "".join(ser.readlines())

ser.write('y')
print "Buspirate set to 38400 and put into transparent bridge mode (with flow control)"
ser.close()