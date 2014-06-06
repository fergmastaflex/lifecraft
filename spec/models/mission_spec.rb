require 'spec_helper'

describe Mission do

	it 'should be valid with all attributes' do
		Mission.new(name: 'Example name', description: 'Example description').should be_valid
	end

	it 'should be invalid with no attributes' do
		Mission.new().should_not be_valid
	end

	context 'with assigned attributes' do

		before(:each) do
			@mission = Mission.new(name: 'Example name', description: 'Example description')
		end

		it 'should be invalid with a missing name' do
			@mission.name = nil
			@mission.should_not be_valid
		end

		it 'should be invalid with a missing description' do
			@mission.description = nil
			@mission.should_not be_valid
		end

	end

end
