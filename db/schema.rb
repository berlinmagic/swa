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

ActiveRecord::Schema.define(:version => 20120824090950) do

  create_table "people", :force => true do |t|
    t.string   "sex"
    t.string   "name"
    t.string   "first_name"
    t.string   "nick_name"
    t.date     "birthday"
    t.string   "proffession"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "people", ["user_id"], :name => "index_people_on_user_id"

  create_table "pics", :force => true do |t|
    t.string   "image_uid"
    t.string   "cropping"
    t.integer  "owner_id"
    t.string   "owner_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "pics", ["owner_type", "owner_id"], :name => "index_pics_on_owner_type_and_owner_id"

  create_table "products", :force => true do |t|
    t.string   "name"
    t.string   "manufactor"
    t.string   "product_type"
    t.string   "usecase"
    t.string   "requirements"
    t.hstore   "data"
    t.integer  "person_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "products", ["data"], :name => "index_products_on_data"
  add_index "products", ["name"], :name => "index_products_on_name"
  add_index "products", ["person_id"], :name => "index_products_on_person_id"

  create_table "services", :force => true do |t|
    t.string   "name"
    t.string   "level"
    t.string   "experience"
    t.string   "certificate"
    t.string   "software"
    t.string   "hardware"
    t.decimal  "price",       :precision => 17, :scale => 2, :default => 0.0
    t.integer  "person_id"
    t.datetime "created_at",                                                  :null => false
    t.datetime "updated_at",                                                  :null => false
  end

  add_index "services", ["person_id"], :name => "index_services_on_person_id"

  create_table "skills", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "language"
    t.string   "software"
    t.string   "hardware"
    t.string   "certificate"
    t.string   "experience"
    t.string   "level"
    t.string   "scare_crop"
    t.string   "panorama_crop"
    t.string   "image_uid"
    t.integer  "person_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "skills", ["person_id"], :name => "index_skills_on_person_id"

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
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
