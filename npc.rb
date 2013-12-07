require_relative 'character.rb'

class NPC < Character

	def initialize(name)
		@name = name
		create_character()
	end
	
	def create_character()
		@strength = Random.new.rand(5..12)
		@dexterity = Random.new.rand(5..12)
		@constitution = Random.new.rand(5..12)
		@hit_points = @constitution * Random.new.rand(2..4)
	end
	
	def display_str
		puts get_str
	end
end

#random_encounter = NPC.new("Guard").display_str