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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130307105431) do

  create_table "Users", :force => true do |t|
    t.string   "user_name"
    t.string   "password_digest"
    t.integer  "company_id"
    t.integer  "role_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "companies", :force => true do |t|
    t.string   "company_name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "items", :force => true do |t|
    t.string   "item_name"
    t.integer  "item_price"
    t.integer  "category_id"
    t.integer  "item_option_id"
    t.integer  "company_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "items", ["category_id"], :name => "index_items_on_category_id"
  add_index "items", ["company_id"], :name => "index_items_on_company_id"
  add_index "items", ["item_option_id"], :name => "index_items_on_item_option_id"

  create_table "orders", :force => true do |t|
    t.integer  "user_id"
    t.integer  "item_id"
    t.string   "user_name"
    t.string   "item_name"
    t.integer  "item_price"
    t.integer  "order_status"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "orders", ["item_id"], :name => "index_orders_on_item_id"
  add_index "orders", ["user_id"], :name => "index_orders_on_user_id"

  create_table "roles", :force => true do |t|
    t.string   "role_name"
    t.boolean  "admin"
    t.boolean  "edit_user"
    t.boolean  "edit_role"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.boolean  "edit_company"
    t.boolean  "edit_own_company"
    t.boolean  "edit_own_item"
    t.boolean  "edit_all_item"
  end

end
