# room_spec.rb
require_relative 'room.rb'

describe Room do
	it "should initialize" do	
		room = Room.new
	end
	
	it "should return true for word found in string" do
		room = Room.new
		room.string_check("I am walking", "am")
	end
	
	it "should return false for word not found in string" do
		room = Room.new
		room.string_check("I am walking", "tree")
	end
	
	
end