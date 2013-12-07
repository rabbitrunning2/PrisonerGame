require_relative 'beginning.rb'

class Main

	def initialize
		new_game = Beginning.new.start()
	end
end

Main.new