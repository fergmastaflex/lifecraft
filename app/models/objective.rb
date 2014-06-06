class Objective < ActiveRecord::Base
	belongs_to :mission

	validates :name, presence: true
	validates :directive, presence: true
	validates :start_date, presence: true
	validates :end_date, presence: true
end
