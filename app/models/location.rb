class Location < ActiveRecord::Base
	has_many :visits

	def self.last_created(value)
		Location.order("created_at DESC").limit(value)
	end

	def self.in_spain?
		Location.where "country ='Spain'"
	end

	def self.iron_find(value)
		Location.where(id: value).first
	end

	def self.count_visits(month, year, value)
		location = Location.find(value)
		location.visits.where('extract(month from from_date) = ?', month).where('extract(year from from_date) = ?', year).count
	end

end
