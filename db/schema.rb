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

ActiveRecord::Schema.define(version: 2020_03_11_150426) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attraction_reviews", force: :cascade do |t|
    t.text "body"
    t.integer "fear_factor"
    t.integer "fun_factor"
    t.integer "user_id"
    t.integer "attraction_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "attractions", force: :cascade do |t|
    t.string "name"
    t.integer "location"
    t.integer "duration"
    t.integer "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "images", force: :cascade do |t|
    t.integer "attraction_id"
    t.string "image_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "park_reviews", force: :cascade do |t|
    t.integer "user_id"
    t.integer "overall_rating"
    t.integer "cleanliness"
    t.integer "food_quality"
    t.integer "theme_quality"
    t.integer "price"
    t.integer "staff_rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
