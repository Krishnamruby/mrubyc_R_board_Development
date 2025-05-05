button = GPIO.new(12, GPIO::IN)

last = button.read #Initial Switch Status

loop do
  current = button.read  #Current Switch Status
  if last != current  #Check the current is not the last status
  	if button.read == 0  # Reading the Switch
    	puts "Button Pressed"
  	else
    	puts "Button Released"
	end
  last = current 
  end
  sleep(0.5)  # debounce delay
end
