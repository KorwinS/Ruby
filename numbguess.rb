# Guess the Number Game, SOLO!

# Greet the user
puts "Hey you! Get over here and play a game with me!"
print "So, what is your name? "
name = gets.chomp
puts "Alright #{name}, lets get started!"

# Set the Answer
answer = rand(200) + 1

# Set the variables for numb of guesses and correct or not
guessed_it = false

# Handle all the guessing shit
num_guesses = 0
while num_guesses < 10 && guessed_it == false
  puts "you have #{10 - num_guesses} remaining"
  print "Guess a number between 1 and 200? "
  guess = gets.to_i

  num_guesses += 1

  if guess > answer
    puts "That's too HIGH, try again!"
  elsif guess < answer
    puts "That's too LOW, try again!"
  elsif guess == answer
    puts "You guessed it in #{num_guesses} trys!"
    puts "#{answer} is the correct answer"
    guessed_it = true
  end
end
# Oh, you didn't guess?
unless guessed_it
  puts "Sorry, #{name}. You didn't guess my number. (It was #{answer}.)"
end
