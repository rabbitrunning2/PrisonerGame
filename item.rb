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

sword = Item.new("Long Sword", (2..10), 'weapon').print_result
