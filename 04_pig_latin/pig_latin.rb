def is_vowel?(n)
  vowel = /[aeiouy]/
  if vowel.match(n) != nil
    return true
  end
  false
end

def word(english)
  
  if is_vowel?(english[0])
    #if we're working with a vowel
    return english.insert(english.length, "ay")
  else
    #if we're working with a consonant
    for i in 0...english.length

      if is_vowel?(english[0])
        break
      elsif english[0..1] == "qu"
        english.insert(english.length, english[0..1])
        english.slice!(english[0..1])
        
      else
        #add the first letter to the end of the string 
        english.insert(english.length, english[0])
        #remove the first letter from the string
        english.slice!(english[0])
      end
    end
    #add an "ay" to the end of the string
    return english + "ay"
  

  end
end

def translate(english_phrase)
  pig_latin = []
  word_array = english_phrase.split(/\s+/)
  for i in 0...word_array.length
    pig_latin << word(word_array[i])
  end
  return pig_latin.join(" ")
end



