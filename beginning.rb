require_relative 'person.rb'
require_relative 'cellroom.rb'

class Beginning

	@@introduction = <<DESCRIPTION
	Welcome to PRISONER - a text-based game by Ryan Esber
	Let's start by making your character...
DESCRIPTION

	def initialize()
		puts @@introduction
		new_character = Person.new
		first_room = CellRoom.new(new_character)
	end
	
end