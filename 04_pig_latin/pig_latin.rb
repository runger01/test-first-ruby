def is_vowel?(char)
    vowels = ["a", "e", "i", "o", "u"]
    vowels.include?(char)
end

# count consonants up till the first vowel find the index of the first vowel
def count_leading_consonants(word)
    characters = word.split("")
    count = 0
    while count <= characters.length
        if !is_vowel?(characters[count-1]) && characters[count] == "q" && characters[count+1] == "u"
            count += 2
        elsif is_vowel?(characters[count])
            return count
        else 
            count += 1
        end
    end
    return count
    # old attempt at the loop, couldn't find a way to count "ua" as a consonant
    #characters.each do |char|
    #    if is_vowel?(char)
    #        return count
    #    else
    #        count += 1
    #    end
    #end
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

puts translate("Music is math")
