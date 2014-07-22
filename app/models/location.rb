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

end
