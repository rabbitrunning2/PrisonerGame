#This is a master room class to eventually remove room.rb parent
#The goal here is to create a class that will be instantiated for each new room.

class RoomMaster
	def initialize
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
end