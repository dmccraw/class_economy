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

ActiveRecord::Schema.define(:version => 20130401143155) do

  create_table "accounts", :force => true do |t|
    t.integer  "owner_id"
    t.string   "owner_type"
    t.integer  "group_id"
    t.float    "balance"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "accounts", ["group_id"], :name => "index_accounts_on_group_id"
  add_index "accounts", ["owner_id"], :name => "index_accounts_on_owner_id"

  create_table "groups", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "groups", ["user_id"], :name => "index_groups_on_user_id"

  create_table "jobs", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "description"
    t.float    "salary"
    t.integer  "group_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "jobs", ["group_id"], :name => "index_jobs_on_group_id"
  add_index "jobs", ["user_id"], :name => "index_jobs_on_user_id"

  create_table "memberships", :force => true do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "memberships", ["group_id"], :name => "index_memberships_on_group_id"
  add_index "memberships", ["user_id"], :name => "index_memberships_on_user_id"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "stores", :force => true do |t|
    t.integer  "group_id"
    t.string   "name"
    t.text     "description"
    t.boolean  "approved"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "stores", ["group_id"], :name => "index_stores_on_group_id"

  create_table "transactions", :force => true do |t|
    t.integer  "from_account_id_id"
    t.integer  "to_account_id_id"
    t.integer  "group_id"
    t.float    "amount"
    t.string   "description"
    t.datetime "occurred_on"
    t.integer  "user_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "transactions", ["from_account_id_id"], :name => "index_transactions_on_from_account_id_id"
  add_index "transactions", ["group_id"], :name => "index_transactions_on_group_id"
  add_index "transactions", ["to_account_id_id"], :name => "index_transactions_on_to_account_id_id"
  add_index "transactions", ["user_id"], :name => "index_transactions_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

  create_table "versions", :force => true do |t|
    t.string   "item_type",  :null => false
    t.integer  "item_id",    :null => false
    t.string   "event",      :null => false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], :name => "index_versions_on_item_type_and_item_id"

end
