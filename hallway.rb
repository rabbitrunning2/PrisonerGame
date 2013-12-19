require_relative 'room.rb'
	
class Hallway < Room
	
	def initialize
		@hallway_help = "You should try one of the doors in the hallway. 
			Unless you want to go back to your cell and wait for death."
		display_description(description)
		start()
	end
	
	def hallway_description
	<<DESCRIPTION
You walk out into a corridor.
There are about five other doors along the hallway. Each door is numbered.
You look back and see your cell was #132.
There are two larger doors to the right and left at either end of the hallway.
DESCRIPTION
	end
	
	def start()
		while true
			prompt()
			action = gets.chomp
			
		if string_check(action, 'help')
			help_request(@hallway_help)
		elsif string_check(action, 'look') or string_check(action, 'search')
			puts "There are five doors numbered: 130, 131, 133, 134, 135, 
				two larger doors to your right and to your left."
		elsif string_check(action, 'open') and string_check(action, 'door')
			door_choice()
		else
			puts "You can't do that."
		end
	
	end
	def door_choice
		puts "What door do you want to open?"
		if string_check(action, 'help')
			help_request(@hallway_help)
		elsif string_check(action, 'right')
			right_end_door
		elsif string_check(action, 'left')
			left_end_door
		elsif string_check(action, '130')
			room_130
		elsif string_check(action, '131')
			room_131
		elsif string_check(action, '133')
			room_133
		elsif string_check(action, '134')
			room_134
		elsif string_check(action, '135')
			room_135
		elsif string_check(action, '132')
			puts "Yeah, why bother trying to escape."
			puts "You go back to your cell and lie down."
			puts "You don't wait long before a shadowy figure comes in and puts a bullet in your head."
			Death.new
		else 
			puts "You can't do that."
		end
	end
	
	def room_133
	end
	
	def room_134
	end
	
	def room_135
	end
	
	def room_131
	end
	
	def room_130
	end
	
	def right_end_door
	end
	
	def left_end_door
	end
	
end