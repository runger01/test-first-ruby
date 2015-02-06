VOWELS = ["a", "e", "i", "o", "u"]

# count consonants up till the first vowel find the index of the first vowel
def count_leading_consonants(word)
    characters = word.split("")
    count = 0
    characters.each do |char|
        if VOWELS.include?(char)
            return count
        else
            count += 1
        end
    end
    return count
end

def pop_leading_consonants(word, length)
    position_of_last_consonant = length - 1
    popped_consonants = word[0..position_of_last_consonant]
    word[0..position_of_last_consonant] = ""
    popped_consonants
end

def translate(words)
    words = words.split(" ")
    words.map! do |word|
        length = count_leading_consonants(word)
        popped_consonants = pop_leading_consonants(word, length)
        word = word + popped_consonants + "ay"
    end
    words.join(" ")
end
