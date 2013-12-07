class Room

	def initialize()
		super()
		@items = nil
		
	end
	
	def prompt()
	 print ">"
	end
		
	def string_check(string, word)
		if string.index(word) != nil
			return true
		else
			return false
		end
	end
	
	def display_description(description)
		puts description
	end
	
end