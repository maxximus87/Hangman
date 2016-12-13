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

def check_and_print(letters, guessed)
	won = true

	letters.each do |l|
		if guessed.include? 1
			print 1
		else
			print '_ '
			won = false
		end
	end

	puts ""

	return won
end


while tries < 10 || letters.length == 0
	letter = gets.chomp
	if letters.include? letter
		puts "You got a letter!"
		guessed << letter
		won = check_and_print(letters, guessed)

		if won
			puts "You win!!!"
			break
		end
	else
		puts "Please try again!"
		tries += 1
		puts "You have " + (10 - tries).to_s + " left"
	end
end

