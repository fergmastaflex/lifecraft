require 'spec_helper'

describe Mission do

	it 'has a valid factory' do
		FactoryGirl.create(:mission).should be_valid
	end

	it 'is invalid without a title' do
		FactoryGirl.build(:mission, title: nil).should_not be_valid
	end

	it 'is invalid without a description' do
		FactoryGirl.build(:mission, description: nil).should_not be_valid
	end

end
