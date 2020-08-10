# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_10_174401) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "food_sources", force: :cascade do |t|
    t.string "name"
    t.text "notes"
    t.boolean "available"
    t.bigint "user_id"
    t.bigint "location_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_food_sources_on_location_id"
    t.index ["user_id"], name: "index_food_sources_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.text "notes"
    t.decimal "lat", precision: 10, scale: 6
    t.decimal "lng", precision: 10, scale: 6
    t.integer "zoom"
    t.string "street"
    t.string "city"
    t.string "state"
    t.bigint "region_id"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "zipcode"
    t.index ["region_id"], name: "index_locations_on_region_id"
    t.index ["user_id"], name: "index_locations_on_user_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.decimal "lat", precision: 10, scale: 6
    t.decimal "lng", precision: 10, scale: 6
    t.integer "zoom"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.boolean "admin", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "food_sources", "locations"
  add_foreign_key "food_sources", "users"
  add_foreign_key "locations", "regions"
  add_foreign_key "locations", "users"
end
