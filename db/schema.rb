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

ActiveRecord::Schema.define(version: 20160827214251) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: :cascade do |t|
    t.integer  "area_id"
    t.string   "area_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cards", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_cards_on_user_id", using: :btree
  end

  create_table "categories", force: :cascade do |t|
    t.integer  "category_id"
    t.string   "category_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "listings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "restaurants_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["restaurants_id"], name: "index_listings_on_restaurants_id", using: :btree
    t.index ["user_id"], name: "index_listings_on_user_id", using: :btree
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "website"
    t.integer  "category_id_id"
    t.integer  "area_id_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["area_id_id"], name: "index_restaurants_on_area_id_id", using: :btree
    t.index ["category_id_id"], name: "index_restaurants_on_category_id_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "username"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  add_foreign_key "cards", "users"
end
