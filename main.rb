require_relative 'person.rb'
require_relative 'cellroom.rb'

class Main

	@@introduction = <<DESCRIPTION
	Welcome to PRISONER - a text-based game by Ryan Esber
	Let's start by making your character...
DESCRIPTION

	def initialize()
		puts @@introduction
		Person.new
		first_room = CellRoom.new()
	end
end

Main.new