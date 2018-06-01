class CreateParkings < ActiveRecord::Migration[5.2]
  def change
    create_table :parkings do |t|
      t.string :vehicle_name
      t.string :number
      t.string :place
      t.time :timing
      t.text :owner_name
      t.integer :no_of_vehicles

      t.timestamps
    end
  end
end
