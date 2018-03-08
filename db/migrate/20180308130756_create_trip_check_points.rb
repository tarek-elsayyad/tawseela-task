class CreateTripCheckPoints < ActiveRecord::Migration[5.1]
  def change
    create_table :trip_check_points do |t|
      t.references :trip
      t.integer :speed
      t.float :latitude
      t.float :longitude
      t.references :user

      t.timestamps
    end
  end
end
