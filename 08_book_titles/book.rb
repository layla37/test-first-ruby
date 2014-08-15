class Book

  def initialize (title = nil)
    @title = title
  end

  def title=(title)
    @title = titleize(title)
  end

  def title
    @title
  end


end

def titleize(title_this) 
	lowercase = ["and", "in", "so", "of", "over", "the", "a", "an", "but", "nor", "at", "by"]
	title = title_this.split(" ")
	for i in 0...title.length
		if title[i] == title.first || title[i] == title.last
			title[i].capitalize!
		end
		if !(lowercase.include? title[i])  
			title[i].capitalize!
		end
	end
	return title.join(" ")
end