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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140303021323) do

  create_table "doors", force: true do |t|
    t.string   "name"
    t.integer  "owner_id"
    t.string   "identifier"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "doors", ["identifier", "owner_id"], name: "index_doors_on_identifier_and_owner_id"
  add_index "doors", ["owner_id", "identifier"], name: "index_doors_on_owner_id_and_identifier"

  create_table "doors_users", id: false, force: true do |t|
    t.integer "door_id", null: false
    t.integer "user_id", null: false
  end

  add_index "doors_users", ["door_id", "user_id"], name: "index_doors_users_on_door_id_and_user_id"
  add_index "doors_users", ["user_id", "door_id"], name: "index_doors_users_on_user_id_and_door_id"

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email"

end
