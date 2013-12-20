#This is a simple message class for when the character dies.
#Reduces redundancy of messages.

#TODO maybe make a general message class to handle death as a specific event.

class Death
	def initialize()
		puts "Good job! You're dead."
    Process.exit(0)
	end
end