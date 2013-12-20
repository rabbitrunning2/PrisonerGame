require_relative 'room.rb'
#This is the second room.

require_relative 'death.rb'
	
class Hallway < Room
	#Added help messages. 
	#TODO These can be moved later to the general message class, if I make it.
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
		display_description(hallway_description)
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
				puts "There are five doors numbered: 130, 131, 133, 134, 135," 
				puts "two larger doors to your right and to your left."
			elsif string_check(action, 'open') and string_check(action, 'door')
				door_choice
		
			else
				puts "You can't do that."
			end
		end
	
	end
	
	def door_choice
		puts "Which door do you want to open?"
		while true
			prompt()
			action = gets.chomp
			if string_check(action, 'help')
				help_request(@hallway_help)
			elsif string_check(action, 'right')
				right_end_door
			elsif string_check(action, 'left')
				left_end_door
			elsif string_check(action, '130')
				room_130
			elsif string_check(action, '131') or string_check(action, '133') or string_check(action, '135')
				locked_door
			elsif string_check(action, '134')
				room_134
			elsif string_check(action, '132')
				puts "Yeah, why bother trying to escape."
				puts "You go back to your cell and lie down."
				puts "You don't wait long before a shadowy figure comes in and puts a bullet in your head."
				Death.new
			else 
				puts "You can't do that."
			end
		end
	end
	
	def locked_door
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
			elsif string_check(action, 'leave') or string_check(action, 'exit')
				puts "You are back in the hallway."
				start()
			elsif string_check(action, 'look') or string_check(action, 'search')
				puts "You look around, but find nothing of use."
			else 
				puts "You can't do that."
			end
		end
	end
		
	def room_130
		puts @room_130_description
		while true
			prompt()
			action = gets.chomp
			if string_check(action, 'help')
				help_request(@room_130_help)
			elsif string_check(action, 'paper')
				puts "It appears to be a confession of sorts." 
				puts "It says that he is a traitor and sold state secrets."
				puts "The heading on the paper says Department of Defense and has an emblem with an eagle on it."		
			elsif string_check(action, 'body')
				puts "You search the man. He appears to have been beaten to death. He has nothing on him."
			elsif string_check(action, 'hallway') or string_check(action, 'leave')
				puts "You are back in the hallway."
				start()
			else 
				puts "You can't do that."
			end
		end
	end
	#TODO fill code to next room - holding room
	def right_end_door
	end
	#TODO fill in code for next room. -next hallway
	def left_end_door
	end
	
end