def is_vowel?(char)
    vowels = ["a", "e", "i", "o", "u"]
    vowels.include?(char)
end

def count_leading_consonants(word)
    characters = word.split("")
    count = 0
    while count <= characters.length
        if not is_vowel?(characters[count-1]) and characters[count] == "q" and characters[count+1] == "u"
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

def starts_with_capital?(word)
    word[0] == word[0].upcase
end

def translate(words)
    first_character_is_uppercase = starts_with_capital?(words)
    words = words.split(" ")
    words.map! do |word|
        length = count_leading_consonants(word)
        popped_consonants = pop_leading_consonants(word, length)
        word = word + popped_consonants + "ay"
    end

    if first_character_is_uppercase
        return words.join(" ").capitalize
    else
        return words.join(" ")
    end
end
