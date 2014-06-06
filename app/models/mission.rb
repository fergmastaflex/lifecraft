class Mission < ActiveRecord::Base
	validates :name, presence: true
	validates :description, presence: true
end
