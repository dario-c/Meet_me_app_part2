class Visit < ActiveRecord::Base
	belongs_to :location

	def self.month_visits(month, year, value)
		location = Location.find(value)
		location.visits.where('extract(month from from_date) = ?', month).where('extract(year from from_date) = ?', year)
	end
end
