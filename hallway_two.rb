#This is the Class for the '40's' Hallway.
require_relative 'room.rb'
require_relative 'hallway.rb'
require_relative 'hallway_four.rb'

class Hallway_Two < Room
	
	def initialize()
		display_description(hallway_description)
		start()
	end
	
	def hallway_description
		<<DESCRIPTION
You walk out into a corridor.
There are six doors in the hallway numbered: 141, 142, 143, 144, 145, 146.
There are two larger doors at either end of the hallway.
DESCRIPTION
	end
	def room_141_description
	end
	def room_142_description
	end
	def room_143_description
	end
	def room_144_description
	end
	def room_145_description
	end
	def room_146_description
	end
	
	def start()
		while true
			prompt()
			action = gets.chomp
			quit_game(action)
		end
	end
	
	def door_choice
			while true
				prompt()
				action = gets.chomp
				quit_game(action)
			end
	end
	
	def room_141
		puts room_141_description
			while true
				prompt()
				action = gets.chomp
				quit_game(action)
			end
	end
	
	def room_142
		puts room_142_description
		while true
			prompt()
			action = gets.chomp
			quit_game(action)
		end
	end
	
	def room_143
		puts room_143_description
		while true
			prompt()
			action = gets.chomp
			quit_game(action)
		end
	end
	
	def room_144
		puts room_144_description
		while true
			prompt()
			action = gets.chomp
			quit_game(action)
		end
	end
	
	def room_145
		puts room_145_description
		while true
			prompt()
			action = gets.chomp
			quit_game(action)
		end
	end
	
	def room_146
		puts room_146_description
		while true
			prompt()
			action = gets.chomp
			quit_game(action)
		end
	end
	
	
end