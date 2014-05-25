# room_spec.rb
require_relative 'spec_helper.rb'

describe Room do
	it "should initialize" do	
		room = Room.new("Name", "item", "A room description")
	end
	
	it "should return true for word found in string" do
		room = Room.new("Name", "item", "A room description")
		room.string_check("I am walking", "am")
	end
	
	it "should return false for word not found in string" do
		room = Room.new("Name", "item", "A room description")
		room.string_check("I am walking", "tree")
	end
	
	
end