require_relative 'room.rb'

class CellRoom < Room

	@@room_description = <<DESCRIPTION
You are alone in a dark cell.
The floor and walls are made of cold stone.	
The door is locked, and there is a barred window very high up.
What would you like to do?
DESCRIPTION

	def initialize
		display_description(@@room_description)
		@item = "piece of metal"
		start()
	end
		
	def start()
		while true
			prompt()
			action = gets.chomp
			if (string_check(action, 'look') or string_check(action, 'search')) and !string_check(action, 'window')
				puts "You grasp around the dark cell..."
				puts "You find a #{@item}!"
				return found_metal
			elsif string_check(action, 'door')
				puts "You claw at the door, but it is locked tight."
			elsif string_check(action, 'window')
				puts "The window is too high to reach."
			elsif string_check(action, 'help')
				puts "Try looking around."
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
				puts "Maybe you could use the metal to pick the lock?"
			elsif string_check(action, 'pick') and string_check(action, 'lock')
				puts "You fiddle around with the lock until it opens."
				puts "You're free! You step out into a hallway..."
				return Hallway.new
			elsif string_check(action, 'use')
				return use_choice
			elsif action == 'stab self'
				return Death.new
			else
				puts "You can't do that."
			end
		end
	end
	
	def use_choice()
		puts "What do you want to use it on?"
		
		while true
			prompt()
			action = gets.chomp
			if string_check(action, 'door') or string_check(action, 'lock')
				puts "You fiddle around with the lock until it opens."
				puts "You're free! You step out into a hallway..."
				return Hallway.new
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

CellRoom.new