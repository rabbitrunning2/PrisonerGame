#Parent class for rooms
#
class Room
#TODO arrays for general actions that are used in each room.
# add name, items, description to init.
	def initialize(name, items, description)
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
	#Mock up of global door_choice or rooms
	def door_choice(action, hash)
		hash.each do |key, value|
			if string_check(action, key)
				value
			end
		end
	end
#TODO set up method to search user input for array of 'actions'.
	def string_array_check(array, word)
		i = 0
		while i < array.length
			string_check(array[i], word)
		end
	end
	
	def quit_game(action)
		if string_check(action, 'quit') or string_check(action, 'q')
			puts "Ok. Goodbye!"
			Process.exit(0)
		end
	end
	
	def help_check(action, help_message)
		if string_check(action, 'help')
			help_request(help_message)
		end
		# return_method
	end
	
	def display_description(description)
		puts description
	end
	
	# def start
		# while true
			# prompt()
			# action = gets.chomp
		# end
	# end

	def help_request(help_message)
		puts help_message
	end
	
	def get_look
		@look_commands
	end
end