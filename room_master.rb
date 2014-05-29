#This is a master room class to eventually remove room.rb parent
#The goal here is to create a class that will be instantiated for each new room.

class RoomMaster
	def initialize(name, items)
		@items = items
		@room_name = name
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
	
	def help_request(help_message)
		puts help_message
	end
	
	def universal_action_choice(string, message)
		if string_check(string, 'help')
			help_request(message)
		end
	end
end