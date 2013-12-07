require_relative 'character.rb'

class Person < Character

	def initialize()
		@answer = true
# 		@name
# 		@strength
# 		@dexterity
# 		@constitution
# 		@hit_points
		while (@answer == true) do
			create_character()
			keep_character()
		end
	end
	
	def print_attributes()
		puts @name
		puts "Str: #{@strength.to_s} Dex: #{@dexterity.to_s} Con: #{@constitution.to_s} HP: #{@hit_points.to_s}"
	end
	
	def create_character()
		prompt
		@name = gets.chomp
		@strength = Random.new.rand(5..18)
		@dexterity = Random.new.rand(5..18)
		@constitution = Random.new.rand(5..18)
		@hit_points = @constitution * Random.new.rand(2..5)
		print_attributes()
	end
	
	def keep_character
		print "Save character? (Y/N)"
		@response = gets.chomp
		if (@response == 'y' or @response == 'Y') 
			@answer = false
		elsif (@response == 'n' or @response == 'N') 
			@answer = true
		else
			keep_character()
		end
		
	end
	
	def prompt
		print "Enter a name: "
	end
	
	def get_hit_points
		@hit_points
	end
	
	def set_hit_points(hp)
		@hit_points = hp
	end
end