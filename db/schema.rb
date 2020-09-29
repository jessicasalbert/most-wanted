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

ActiveRecord::Schema.define(version: 2020_09_29_192822) do

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "display_name"
  end

  create_table "crimes", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "hair_raw"
    t.string "details"
    t.string "race_raw"
    t.string "eyes"
    t.string "image"
    t.string "birthday"
    t.integer "city_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "warning_message"
    t.string "scars_and_marks"
    t.string "alias"
    t.string "caution"
    t.string "sex"
    t.string "url"
    t.string "remarks"
    t.string "image_small"
    t.integer "reward"
  end

  create_table "updates", force: :cascade do |t|
    t.integer "crime_id"
    t.integer "user_id"
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.string "password_digest"
    t.integer "badge_id"
    t.integer "city_id"
  end

end
