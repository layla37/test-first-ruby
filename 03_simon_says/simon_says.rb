def echo(simon_says)
  return simon_says
end

def shout(simon_says)
  return simon_says.upcase
end

def repeat(simon_says, n = 2)
  str = ""
  for i in 1..n do 
  	str << simon_says
  	if i < n
  		str << " "
  	end
  end
  str
end

def start_of_word(word, n = 1)
	return word[0...n]
end

def first_word(word)
	return word.split(" ")[0]
end

def titleize(title_this) 
	lowercase = ["and", "so", "of", "over", "the", "a", "an", "but", "nor", "at", "by"]
	title = title_this.split(" ")
	for i in 0...title.length
		if title[i] == title.first || title[i] == title.last
			title[i].capitalize!
		end
		if title[i].length > 4 && !(lowercase.include? title[i])  
			title[i].capitalize!
		end
	end
	return title.join(" ")
end