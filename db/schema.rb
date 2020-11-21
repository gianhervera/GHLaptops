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

ActiveRecord::Schema.define(version: 2020_11_21_191953) do

  create_table "orders", force: :cascade do |t|
    t.integer "order_id"
    t.integer "customer_id"
    t.integer "quantity"
    t.string "product"
    t.integer "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_orders_on_product_id"
  end

  create_table "product_orders", force: :cascade do |t|
    t.integer "order_id"
    t.integer "Product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Product_id"], name: "index_product_orders_on_Product_id"
  end

  create_table "products", force: :cascade do |t|
    t.integer "product_id"
    t.string "company"
    t.string "product"
    t.string "type_name"
    t.integer "inches"
    t.string "screen_resolution"
    t.string "CPU"
    t.string "RAM"
    t.string "memory"
    t.string "GPU"
    t.string "images"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "roles", force: :cascade do |t|
    t.integer "role_id"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "phone"
    t.string "username"
    t.string "password"
    t.string "address"
    t.integer "role_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  add_foreign_key "orders", "products"
  add_foreign_key "product_orders", "Products"
  add_foreign_key "users", "roles"
end
