# This is just an example to get you started. A typical binary package
# uses this file as the main entry point of the application.

import board
import board / [times, serial, progmem]

Serial.init(9600.Hz)
Serial.send p"Hello world\n"
Led.output()

while true:
  Led.high()
  Serial.send p"Led is on\n"
  delayMs(1000)
  Led.low()
  Serial.send p"Led is off\n"
  delayMs(1000)
