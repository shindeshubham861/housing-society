# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_05_24_070930) do

  create_table "parkings", force: :cascade do |t|
    t.string "vehicle_name"
    t.string "number"
    t.string "place"
    t.time "timing"
    t.text "owner_name"
    t.integer "no_of_vehicles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "programs", force: :cascade do |t|
    t.text "program_name"
    t.text "description"
    t.date "start_date"
    t.date "end_date"
    t.decimal "amount"
    t.time "timing"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "records", force: :cascade do |t|
    t.string "name"
    t.integer "family_members"
    t.decimal "room_no"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "security_staffs", force: :cascade do |t|
    t.text "staff_info"
    t.string "guard_name"
    t.integer "salary"
    t.string "work_timing"
    t.text "daily_task"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
