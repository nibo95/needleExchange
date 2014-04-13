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

ActiveRecord::Schema.define(version: 20140413213218) do

  create_table "clients", force: true do |t|
    t.string   "code"
    t.boolean  "has_old_code"
    t.datetime "birth_date"
    t.string   "race"
    t.datetime "register_date"
    t.string   "register_location_name"
    t.string   "gender"
    t.string   "how_did_you_hear"
    t.boolean  "veterancy"
    t.string   "neighborhood"
    t.boolean  "hiv_screen"
    t.boolean  "hiv_result"
    t.boolean  "hep_b_screen"
    t.boolean  "hep_b_result"
    t.boolean  "hep_c_screen"
    t.boolean  "hep_c_result"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_new"
  end

  create_table "exchanges", force: true do |t|
    t.integer  "visit_id"
    t.integer  "user_id"
    t.integer  "ultrafines"
    t.integer  "halfs"
    t.integer  "pogos"
    t.integer  "blues"
    t.integer  "one_qt"
    t.integer  "two_qt"
    t.integer  "three_gal"
    t.integer  "alcohol_whipes"
    t.integer  "cookers"
    t.integer  "cottons"
    t.integer  "ties"
    t.integer  "bleach"
    t.integer  "condoms"
    t.integer  "ascorbic_acid"
    t.integer  "pieces_of_lit"
    t.integer  "narcan"
    t.integer  "secondary_exchange"
    t.integer  "returned_needles"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "eight_gal"
    t.integer  "bleach_bottle"
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "role"
    t.string   "user_name"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visits", force: true do |t|
    t.integer  "exchange_id"
    t.integer  "location_id"
    t.integer  "client_id"
    t.datetime "visit_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
