require "./guessing_game.rb"

puts "Starting the Game"
game = GuessingGame.new

until game.finished?
  print "Enter a guess:"
  number = gets.chomp.to_i
  game.guess(number)
end

if game.won?
  puts "You won"
else
  puts "You lost"
end
