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

ActiveRecord::Schema.define(version: 20151216174151) do

  create_table "addresses", force: :cascade do |t|
    t.string   "patio"
    t.string   "district"
    t.string   "number"
    t.string   "zip_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "person_id"
  end

  add_index "addresses", ["person_id"], name: "index_addresses_on_person_id"

  create_table "items", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "cpf"
    t.string   "ip_person"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "email"
    t.string   "doer"
    t.string   "buyer"
  end

  create_table "shopping_list_items", force: :cascade do |t|
    t.integer  "shopping_list_id"
    t.integer  "item_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "shopping_list_items", ["item_id"], name: "index_shopping_list_items_on_item_id"
  add_index "shopping_list_items", ["shopping_list_id"], name: "index_shopping_list_items_on_shopping_list_id"

  create_table "shopping_lists", force: :cascade do |t|
    t.string   "status"
    t.integer  "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "shopping_lists", ["person_id"], name: "index_shopping_lists_on_person_id"

end
