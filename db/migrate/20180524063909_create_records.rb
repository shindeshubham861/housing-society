class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.string :name
      t.string :photo
      t.integer :family_members
      t.decimal :room_no
      t.string :email

      t.timestamps
    end
  end
end
