class Remove < ActiveRecord::Migration
  def change

  	remove_column :visits, :user_name #remove user_name from visits table
  end
end
