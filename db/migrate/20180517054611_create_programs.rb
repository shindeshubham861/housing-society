class CreatePrograms < ActiveRecord::Migration[5.2]
  def change
    create_table :programs do |t|
      t.text :program_name
      t.text :description
      t.date :start_date
      t.date :end_date
      t.decimal :amount
      t.time :timing

      t.timestamps
    end
  end
end
