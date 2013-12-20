#This is a general class to use for creating items
#It is not fully formed yet.
#It should create and instance of an item 
#and save that instance in the character inventory.

class Item

	def initialize(name, damage, classification)
		@item_name = name
		@item_damage = damage
		@item_class = classification
	end

	def attack
		return Random.new.rand(@item_damage)
	end
	
	def print_result
		puts attack().to_s
	end
	
end

