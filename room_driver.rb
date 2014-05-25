require_relative 'room.rb'

class RoomDriver < Room

	def initialize(name, items, description)
		@name = name
		@items = items
		display_description(description)
	end
	
	
end