require 'spec_helper'

describe Objective do

	it 'has a valid factory' do
		FactoryGirl.create(:objective).should be_valid
	end

	it 'is invalid without a title' do
		FactoryGirl.build(:objective, title: nil).should_not be_valid
	end

	it 'is invalid without a description' do
		FactoryGirl.build(:objective, description: nil).should_not be_valid
	end

	it 'is invalid without a start_time' do
		FactoryGirl.build(:objective, start_date: nil).should_not be_valid
	end

	it 'is invalid without an end_time' do
		FactoryGirl.build(:objective, end_date: nil).should_not be_valid
	end

end
