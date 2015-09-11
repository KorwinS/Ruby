# Test sites for bad return - KorwinS

#Set Variables and get input
print "Enter site to test: "
site = gets.chomp
print "How many attempts (at 1 sec intervals): "
tries = gets.to_i
pass = 0
no_pass = 0
attempts = 0

#loop through curl script
while attempts < tries do
  output = system "curl #{site}"
  attempts += 1
  if output == true
    pass += 1.0
  else
    no_pass += 1.0
  end

  #format the rate
  rate = (pass / attempts) * 100.0
  formatted_rate = format("%.2f", rate)

  #display stats
  puts "Pass: #{pass}, Fail: #{no_pass}, Attempts: #{attempts}."
  puts "Success Rate: #{formatted_rate}%"

  #pause for 1 second
  sleep 1
end

puts "FINAL Pass: #{pass}, Fail: #{no_pass}. Success Rate: #{formatted_rate}%"
