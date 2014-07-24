class Remove < ActiveRecord::Migration
  def change

  	remove_column :visits, :user_id #remove user_id from visits table
  end
end
