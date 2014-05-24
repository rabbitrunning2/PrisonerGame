#cellroom_spec.rb

require_relative 'spec_helper.rb'

describe CellRoom do
	it "should initialize" do	
		room = CellRoom.new
		room.should == "You are alone in a dark cell.
The floor and walls are institutional green cinderblock.	
There is a single metal door and no windows.
What would you like to do?"
	end
end