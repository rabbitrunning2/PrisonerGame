require_relative 'room.rb'
require_relative 'death.rb'
require_relative 'hallway.rb'

class FirstRoom < Room
	def initialize
		display_description(cell_description)
	end
	
	def cell_description
	<<END
You are alone in a dark cell.
The floor and walls are institutional green cinderblock.	
There is a single metal door and no windows.
What would you like to do?
END
	end
	 
end
