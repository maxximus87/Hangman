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
puts "Player 2, please guess a letter: "

while tries < 10 || letters.length == 0
	letter = gets.chomp
	if letters.include? letter
		ind = letters.index(letter)
		progress.insert(ind, letter)
		progress.delete("_ ")
		letters.delete(letter)
		puts "You got a letter!"
		progress = "_ " * letters.length
		puts progress
	else
		puts "Try again."
		tries += 1
		puts "You have " + (10 - tries).to_s + " left"
	end
end
