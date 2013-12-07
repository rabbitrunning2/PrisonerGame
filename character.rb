class Character

	def initialize()
		super()
		
	end
	
	def get_name
		@name
	end
	
	def get_str
		@strength
	end
	
	def get_dex
		@dexterity
	end
	
	def get_con
		@constitution
	end
	
	def get_hit_points
		@hitpoints
	end
	
	def get_inventory
		@inventory
	end
	
	def set_hit_points(hp)
		@hitpoints = hp
	end
end

