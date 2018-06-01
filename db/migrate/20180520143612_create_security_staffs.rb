class CreateSecurityStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :security_staffs do |t|
      t.text :staff_info
      t.string :guard_name
      t.integer :salary
      t.string :work_timing
      t.text :daily_task

      t.timestamps
    end
  end
end
