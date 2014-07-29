class Search
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :keyword

  def search_locations
    Location.where(:name => @keyword)
  end

end
