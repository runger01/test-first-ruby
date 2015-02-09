class Book
	def title=(book_title)
		@title = book_title.split(" ")
		@exceptions = ["and", "in", "the", "of", "a", "an"]
	end

	def title
		@title.map! do |word|
			if !@exceptions.include?(word)
				word.capitalize
			else
				word.downcase
			end
		end
		@title[0].capitalize!
		@title = @title.join(" ")
	end
end