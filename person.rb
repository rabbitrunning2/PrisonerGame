require_relative 'character.rb'

class Person < Character

	def initialize()
		@answer = true
		
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
		if @name == nil
			prompt
			name = gets.chomp
			set_name(name.capitalize)
			set_stats(5,18)
			set_hit_points(2,5)
			print_attributes()
		elsif @name != nil
			set_stats(5,18)
			set_hit_points(2,5)
			print_attributes()
		else
			raise "Something went wrong here!"
		end
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
	
end