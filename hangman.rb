word = nil
tries = 0
letter = nil

puts "This is Hangman, a game where Player 1 writes a word for Player 2 to guess."
puts "Player 1, choose your word: "
word = gets.chomp
letters = []
letters = word.split(//)
progress = ["_" * letters.length]
puts progress
puts "Player 2, please make a guess: "