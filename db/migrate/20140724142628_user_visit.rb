class UserVisit < ActiveRecord::Migration
  def change
  	add_column :visits, :user_id, :integer  #it connects User to Visit guided by the name!!!
  end
end
