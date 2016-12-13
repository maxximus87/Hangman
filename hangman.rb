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
<<<<<<< HEAD
puts "Player 2, please make a guess: "



=======
puts "Player 2, please guess a letter: "
>>>>>>> 287d858279355191d3e3d3c227a3b971ce808ddd

while tries < 10 || letters.length == 0
	letter = gets.chomp
	if letters.include? letter
		ind = letters.index(letter)
		progress.insert(ind, letter)
<<<<<<< HEAD
		letters.delete("_ ")
=======
		progress.delete("_ ")
		letters.delete(letter)
>>>>>>> 287d858279355191d3e3d3c227a3b971ce808ddd
		puts "You got a letter!"
		progress = "_ " * letters.length
		puts progress
	else
<<<<<<< HEAD
		puts "Please try again!"
=======
		puts "Try again."
>>>>>>> 287d858279355191d3e3d3c227a3b971ce808ddd
		tries += 1
		puts "You have " + (10 - tries).to_s + " left"
	end
end
<<<<<<< HEAD

=======
>>>>>>> 287d858279355191d3e3d3c227a3b971ce808ddd
