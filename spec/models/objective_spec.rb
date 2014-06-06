require 'spec_helper'

describe Objective do

	context 'Objective creation' do

		it 'should be invalid without all the required attributes' do
			Objective.new().should_not be_valid
		end

		it 'should be invalid if the name is empty' do
			Objective.new(name: "").should_not be_valid
		end

		context 'with assigned attributes' do

			before(:each) do
				@objective = Objective.new(name: 'Example name', directive: 'Example Directive', start_date: DateTime.now, end_date: DateTime.now)
			end

			it 'should be valid with all assigned attributes' do
				@objective.should be_valid
			end

			it 'should be invalid with a missing name' do
				@objective.name = ''
				@objective.should_not be_valid
			end

		end

	end

end
