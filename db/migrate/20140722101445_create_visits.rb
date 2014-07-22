class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
			# t.belongs_to :location
      t.timestamps
    end
  end
end
