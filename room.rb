class Room

	def initialize()
		super()
		@items = nil
		@look_commands = ['look', 'search']
		@movement_commands = ['walk', 'go']
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
	
	def string_array_check(array, word)
		i = 0
		while i < array.length
			string_check(array[i], word)
		end
	end
	
	def display_description(description)
		puts description
	end
	
	def help_request(help_message)
		puts help_message
	end
	
	def get_look
		@look commands
	end
end