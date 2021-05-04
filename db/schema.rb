# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_30_192945) do

  create_table "cart_items", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image"
    t.index ["item_id"], name: "index_cart_items_on_item_id"
    t.index ["user_id"], name: "index_cart_items_on_user_id"
  end

  create_table "class_reviews", force: :cascade do |t|
    t.string "description"
    t.integer "rating"
    t.integer "user_id", null: false
    t.integer "gym_class_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gym_class_id"], name: "index_class_reviews_on_gym_class_id"
    t.index ["user_id"], name: "index_class_reviews_on_user_id"
  end

  create_table "gym_classes", force: :cascade do |t|
    t.string "date"
    t.boolean "booked"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "time"
  end

  create_table "item_reviews", force: :cascade do |t|
    t.integer "rating"
    t.string "review"
    t.integer "item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["item_id"], name: "index_item_reviews_on_item_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "description"
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image"
  end

  create_table "scheduled_classes", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "gym_class_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gym_class_id"], name: "index_scheduled_classes_on_gym_class_id"
    t.index ["user_id"], name: "index_scheduled_classes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.string "email"
  end

  add_foreign_key "cart_items", "items"
  add_foreign_key "cart_items", "users"
  add_foreign_key "class_reviews", "gym_classes"
  add_foreign_key "class_reviews", "users"
  add_foreign_key "item_reviews", "items"
  add_foreign_key "scheduled_classes", "gym_classes"
  add_foreign_key "scheduled_classes", "users"
end
