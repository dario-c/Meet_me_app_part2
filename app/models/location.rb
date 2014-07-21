class Location < ActiveRecord::Base

	def self.iron_find(value)
		Location.where(id: value).first
	end

end
