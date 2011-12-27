# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111217234951) do

  create_table "accounts", :force => true do |t|
    t.string   "name"
    t.string   "login"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manufacturers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "part_vehicle_types", :force => true do |t|
    t.string   "name"
    t.integer  "timeout"
    t.integer  "miles_travel"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "part_vehicles", :force => true do |t|
    t.date     "installed_date"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "part_vehicle_type_id"
    t.integer  "vehicle_id"
  end

  add_index "part_vehicles", ["part_vehicle_type_id", "vehicle_id"], :name => "index_part_vehicles_on_part_vehicle_type_id_and_vehicle_id"
  add_index "part_vehicles", ["part_vehicle_type_id"], :name => "index_part_vehicles_on_part_vehicle_type_id"
  add_index "part_vehicles", ["vehicle_id"], :name => "index_part_vehicles_on_vehicle_id"

  create_table "vehicle_models", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "manufacturer_id"
  end

  add_index "vehicle_models", ["manufacturer_id"], :name => "index_vehicle_models_on_manufacturer_id"

  create_table "vehicles", :force => true do |t|
    t.string   "nickname"
    t.integer  "km"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "account_id"
    t.integer  "vehicle_model_id"
  end

  add_index "vehicles", ["account_id", "vehicle_model_id"], :name => "index_vehicles_on_account_id_and_vehicle_model_id"
  add_index "vehicles", ["account_id"], :name => "index_vehicles_on_account_id"
  add_index "vehicles", ["vehicle_model_id"], :name => "index_vehicles_on_vehicle_model_id"

end
