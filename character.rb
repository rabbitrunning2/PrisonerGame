class Character
	@name
	@strength
	@dexerity
	@consitution
	@hit_points
	@inventory
	
	def initialize()
		super()
		@inventory = Array.new
		
	end
	
	def self.name
		@name
	end
	
	def self.strength
		@strength
	end
	
	def self.dexterity
		@dexterity
	end
	
	def self.constitution
		@constitution
	end
	
	def self.hit_points
		@hitpoints
	end
	
	def self.inventory
		@inventory
	end
	
	def set_hit_points(hp)
		@hitpoints = hp
	end
	
	def set_name(name)
		@name = name
	end
	
	def set_strength(low_number, high_number)
		@strength = Random.new.rand(low_number..high_number)
	end
	
	def set_dexterity(low_number, high_number)
		@dexterity = Random.new.rand(low_number..high_number)
	end
	
	def set_constitution(low_number, high_number)
		@constitution = Random.new.rand(low_number..high_number)
	end
	
	def set_hit_points(low_number, high_number)
		if @constitution != nil
			@hit_points = @constitution * Random.new.rand(low_number..high_number)
		else
			raise "No value for consitution to compute hit points!"
		end
	end
	def add_item(item)
		@inventory.push(item)
	end
	
	def set_stats(low_number, high_number)
		set_strength(low_number, high_number)
		set_dexterity(low_number, high_number)
		set_constitution(low_number, high_number)
	end
	
end

