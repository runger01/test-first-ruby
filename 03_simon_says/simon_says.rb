def echo word_to_echo
	word_to_echo
end

def shout word_to_shout
	word_to_shout.upcase
end

def repeat word_to_repeat, times_to_repeat = 2
	word_to_repeat + (" " + word_to_repeat) * (times_to_repeat - 1)
end

def start_of_word word, length
	word[0..length-1]
end

def first_word word
	word.split(" ")[0]
end

def titleize sentence
	small_words = ["and", "the", "over"]
	words = sentence.downcase.split(" ")
	# capitalize the first word in the array, since the first word will be
	# skipped if it is included in small_words
	words[0] = words[0].capitalize
	# iternate over the array and capitalize each word expect words
	# included in small_words
	words.map! do |word|
		if not small_words.include?(word)
			word.capitalize
		else
			word
		end
	end
	words.join(" ")
end