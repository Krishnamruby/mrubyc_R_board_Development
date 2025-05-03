gpio = GPIO.new(5, GPIO::OUT)

loop do
  gpio.write(1)   # Turn LED ON
  sleep(1)
  gpio.write(0)   # Turn LED OFF
  sleep(1)  
end
