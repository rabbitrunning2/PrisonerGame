require_relative 'room.rb'
	
class Hallway < Room
	
	def initialize
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
			
			
		end
	
	end
	
end