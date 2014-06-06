class Objective < ActiveRecord::Base
	belongs_to :mission

	validates :title, presence: true
	validates :description, presence: true
	validates :start_date, presence: true
	validates :end_date, presence: true
end
