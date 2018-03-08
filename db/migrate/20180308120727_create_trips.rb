class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.references :user
      t.integer :starting_time
      t.float :starting_latitude
      t.float :starting_longitude
      t.string :starting_address
      t.integer :ended_time, allow_nil: true
      t.integer :estimated_arrival_time, allow_nil: true
      t.integer :current_status, default: 0

      t.timestamps
    end
  end
end
