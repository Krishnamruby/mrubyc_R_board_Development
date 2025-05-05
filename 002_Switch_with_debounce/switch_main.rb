button = GPIO.new(12, GPIO::IN)

last = button.read

loop do
  current = button.read
  if last != current
  	if button.read == 0
    	puts "Button Pressed"
  	else
    	puts "Button Released"
	end
  last = current
  end
  sleep(0.5)  # debounce delay
end
