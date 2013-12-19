require_relative 'room.rb'
	
class Hallway < Room
	
	def initialize
		@hallway_help = "You should try one of the doors in the hallway. 
			Unless you want to go back to your cell and wait for death."
		@room_134_help = "This is an empty cell. There is nothing for you to do."
		@room_130_help = "There's a body and a piece of paper, maybe start there?"
		@locked_door = "The door is locked."
		@room_134_description = "You open the door and walk into an empty cell."
		@room_130_description = "You open the door and walk into the cell. 
		There is a man's body lying on the floor. He looks dead .There is dried blood and bruises all over his body.
		His clothes are torn. There is a piece of paper by his hand."
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
		puts "Which door do you want to open?"
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
		puts @locked_door
		start()
	end
	
	def room_134
		puts @room_134_description
		while true
			prompt()
			action = gets.chomp
			if string_check(action, 'help')
				help_request(@room_134_help)
			else 
				puts "You can't do that."
			end
		end
	end
	
	def room_135
		puts @locked_door
		start()
	end
	
	def room_131
		puts @locked_door
		start()
	end
	
	def room_130
		puts @room_134_description
		while true
			prompt()
			action = gets.chomp
			if string_check(action, 'help')
				help_request(@room_130_help)
			else 
				puts "You can't do that."
			end
		end
	end
	
	def right_end_door
	end
	
	def left_end_door
	end
	
end