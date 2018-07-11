class Book
# write your code here

	attr_accessor :title

	def inititalize(title)
		@title = title
	end

	def title 
		multiple = @title.split(" ")

		if multiple.length > 1
		i = 0
			while i < multiple.length
				puts multiple[i]
				puts multiple[i].match(/and|in|the|of|a|an/)
				if multiple[i] == (multiple[i].match(/and|in|the|of|a|an/)).to_s
					i += 1
					next
				elsif multiple[i] == "an"
					i += 1
					
				end
				multiple[i].capitalize!
				i += 1
			end
			multiple[0].capitalize!
			return multiple.join(" ")
		end
		
		@title.capitalize!
	end

end

@book = Book.new

puts @book.title = "to eat an apple a day"
puts @book.title

