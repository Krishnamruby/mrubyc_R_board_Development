adc = ADC.new("B14")  # Pin 19 = RB14 = "B14" string in your pin mapping

while true
  voltage = adc.read_voltage
  raw = adc.read_raw
  temp = voltage * 100

  puts "ADC Reading from B14 (Pin 19):"
  puts "  Voltage: #{voltage} V"
  puts "  Raw: #{raw}"
  puts "Temperature in C : #{temp}"

  sleep(1)  # wait 1 second between readings (if delay is available)
end
