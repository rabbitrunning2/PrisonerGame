require_relative 'room.rb'
	@@room_description = <<DESCRIPTION
You walk out into a corridor.
There are about five other doors along the hallway. Each door is numbered.
You look back and see your cell was #132.
There are two larger doors at either end of the hallway.
DESCRIPTION
class Hallway < Room
	def initialize
		display_description(@@room_description)
		start()
	end
end