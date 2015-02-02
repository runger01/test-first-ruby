VOWELS = ["a", "e", "i", "o", "u"]

def index_of_first_vowel word
	word.map do |char|
		if VOWELS.include?(char)
			index = word.index(char)
		end
	end
	index
end

def pop_consonants word
end

def pop_first_char word
	popped_char = word[0]
	word[0] = ""
	popped_char
end

def translate word
	# if word starts with a vowel
	if VOWELS.include?(word[0])
		word = word + "ay"
	# word starts with a consonant
	else
		consonant = pop_first_char(word)
		word = word + consonant + "ay"
	end
end

