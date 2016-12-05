require "minitest/autorun"
require_relative "hangman.rb"

class TestHangMan < Minitest::Test

	def test_get_player_1_word
		word = gets.chomp(word)
		assert_equal("maxx", (word))
	end

end