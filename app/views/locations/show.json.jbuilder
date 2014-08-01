#json.location(@location, :name, :city, :id, :user)

json.location do
  json.(@location, :name, :city, :id)
  json.user(@location.user, :user_firstname, :user_lastname)
end