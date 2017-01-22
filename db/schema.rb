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

ActiveRecord::Schema.define(version: 20170122031935) do

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dependences", force: :cascade do |t|
    t.integer  "restaurant_id"
    t.integer  "city_id"
    t.integer  "zone_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["city_id"], name: "index_dependences_on_city_id"
    t.index ["restaurant_id"], name: "index_dependences_on_restaurant_id"
    t.index ["zone_id"], name: "index_dependences_on_zone_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.integer  "specialty_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "image"
    t.index ["specialty_id"], name: "index_restaurants_on_specialty_id"
  end

  create_table "specialties", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "zones", force: :cascade do |t|
    t.string   "name"
    t.integer  "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_zones_on_city_id"
  end

end
