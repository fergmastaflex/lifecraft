require 'test_helper'

class ObjectiveTest < ActiveSupport::TestCase
	
	subject { assigns("objective") }
	it { should be_valid }
end
