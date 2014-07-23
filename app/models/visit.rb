class Visit < ActiveRecord::Base
	belongs_to :location

	validates :from_date, presence: true
	validates :to_date, presence: true
	validates :user_name, presence: true, format: {with: /\A[a-zA-Z]+\z/} #alphanumeric regex
	validates :location_id, presence: true, numericality: true

	def self.month_visits(month, year, value)
		location = Location.find(value)
		location.visits.where('extract(month from from_date) = ?', month).where('extract(year from from_date) = ?', year)
	end
end
