require_relative 'room.rb'
require_relative 'death.rb'
require_relative 'person.rb'

class CellRoom < Room

	@@room_description = <<DESCRIPTION
You are alone in a dark cell.
The floor and walls are institutional green cinderblock.	
There is a single metal door and no windows.
What would you like to do?
DESCRIPTION
		
	def initialize(person)
		@items = "piece of metal"
		@start_help = "Try looking around..."
		@metal_help = "Maybe you could use the metal to pick the lock?"
		@door_help = "Maybe you should open the door..."
		@current_state_person = person
		
		display_description(@@room_description)
		start()
	end
		
	def start()
		while true
			prompt()
			action = gets.chomp
			if (string_check(action, 'look') or string_check(action, 'search'))
				puts "You grasp around the dark cell..."
				puts "You find a #{@items}!"
				@current_state_person.add_item(@items)
				return found_metal
			elsif string_check(action, 'door')
				puts "You claw at the door, but it is locked tight."
			elsif string_check(action, 'help')
				help_request(@start_help)
			else
				puts "You can't do that."
			end
		end
	end
	
	def found_metal()
		while true
			prompt()
			action = gets.chomp
			if string_check(action, 'help')
				help_request(@metal_help)
			elsif string_check(action, 'pick') and string_check(action, 'lock')
				puts "You slide the metal into the small opening. You hands move like you have done this before..."
				puts "You feel the door unlock."
				return unlocked_door
			elsif string_check(action, 'use')
				return use_choice
			elsif action == 'stab self'
				return Death.new
			else
				puts "You can't do that."
			end
		end
	end
	
	def unlocked_door
		while true
			prompt()
			action = gets.chomp
			if string_check(action, 'open') and string_check(action, 'door')
				return Hallway.new
			elsif string_check(action, 'help')
				help_request(@door_help)
			else
				puts "Not sure why you'd do that, the door is unlocked now. Maybe you should open it?"
			end
		end
	end
	
	def use_choice()
		puts "What do you want to use it on?"
		
		while true
			prompt()
			action = gets.chomp
			if string_check(action, 'door') or string_check(action, 'lock')
				puts "You slide the metal into the small opening. You hands move like you have done this before..."
				puts "You feel the door unlock."
				return unlocked_door
			elsif string_check(action, 'self')
				puts "You stab yourself with the metal."
				return Death.new
			elsif string_check(action, 'wall')
				puts "That's a nice picture."
			else
				puts "You can't do that."
			end
		end
	end
	
end

CellRoom.new(Person.new)