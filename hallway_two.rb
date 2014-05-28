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
There are six doors in the hallway numbered: 141, 142, 143, 144, 15, 146.
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
	end
	
	def room_141
	end
	
	def room_142
	end
	
	def room_143
	end
	
	def room_144
	end
	
	def room_145
	end
	
	def room_146
	end
	
	
end