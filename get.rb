#Guess the number game using RUBY

puts "Welcome to 'Get My Number!'"

#Get the player's name
print "So, what is your name? "
name = gets.chomp
puts "Welcome, #{name}! Let's get started"

puts "I have a random number between 1 and 100."
puts "Think you can guess it?"

#Store a rando number between 1 and 100
target = rand(100) + 1

#is it the right guess?
guessed_it = false

#handle the guesses
num_guesses = 0
while num_guesses < 10 && guessed_it == false
  puts "You have #{10 - num_guesses} reamaining"
  print "Make a guess: "
  guess = gets.to_i

  num_guesses += 1

  # Compare the guess to the target.
  # Print the appropriate message.
  if guess < target
    puts "Oops. Your guess was LOW."
  elsif guess > target
    puts "Oops. Your guess was HIGH."
  elsif guess == target
    puts "Good job, #{name}!"
    puts "You guessed my number (#{target}) in #{num_guesses} guesses!"
    guessed_it = true
  end

end

# If player ran out of turns, tell them what the number was.
unless guessed_it
  puts "Sorry. You didn't get my number. (It was #{target}.)"
end
