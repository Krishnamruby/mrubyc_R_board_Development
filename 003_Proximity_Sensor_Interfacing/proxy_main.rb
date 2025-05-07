ir_sense = GPIO.new(15, GPIO::IN)
led = GPIO.new(5,GPIO::OUT)

last = 1

loop do
  current = ir_sense.read
  if current!= last
	if ir_sense.read == 0
		puts "Obstacle"
		led.write(1)
	else
		led.write(0)
		puts "No Obstacle"
	end
  last = current
  end
  sleep(0.5)  # debounce delay
end
