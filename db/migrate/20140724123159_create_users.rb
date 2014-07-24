class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

    	t.string :user_firstname
    	t.string :user_lastname
    	t.integer :favourite_location


      t.timestamps
    end
  end
end
