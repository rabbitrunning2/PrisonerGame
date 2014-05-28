#This is the main class to run the program
#It prints out the game description
#It initializes the creation of a character and starts the fist room.

#require_relative 'person.rb'
require_relative 'cellroom.rb'
require_relative 'room_driver.rb'

class Main

	@@introduction = 
	<<DESCRIPTION
	Welcome to PRISONER - a text-based game by Ryan Esber
DESCRIPTION

#TODO calls returned new room form here

	def initialize()
		puts @@introduction
		#Person.new
		first_room = CellRoom.new()

		#new_room = RoomDriver.new("room132", "key", "You are in a room")

	end
end

Main.new