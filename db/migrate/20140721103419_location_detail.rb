class LocationDetail < ActiveRecord::Migration
  def change
  	  add_column :locations, :zip_code, :integer
  	  add_column :locations, :street, :string
  	  add_column :locations, :country, :string
  	  add_column :locations, :description, :text
  end
end
