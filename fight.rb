require_relative 'npc.rb'
require_relative 'person.rb'

class Fight
	def initialize(character, npc)
		
	end
	
	def round(receiver, weapon_damage)
		damage = Random.new.rand(weapon_damage)
		receiver.set_hit_points(receiver.get_hit_points.to_i - damage)
	end
	
	def battle()
		if(charatcer.get_dex > npc.get_dex)
			while (character.get_hit_points > 0 and npc.get_hit_points > 0) do
				round(character, character_weapon)
				round(npc, npc_weapon)
			end
		elsif(npc.get_dex > character.get_dex)
			while (character.get_hit_points > 0 and npc.get_hit_points > 0) do
				round(npc, npc_weapon)
				round(character, character_weapon)
			end
		else
			puts "Something went wrong here"
		end
	end
	
end

tom = Person.new
guard = NPC.new("Guard")
attack = Fight.new(tom, guard)
puts tom.get_hit_points
attack.round(tom, (1..5))
puts tom.get_hit_points
