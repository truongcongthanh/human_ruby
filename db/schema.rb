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

ActiveRecord::Schema.define(:version => 20140825043924) do

  create_table "certificates", :force => true do |t|
    t.string   "name",       :limit => 250
    t.string   "code",       :limit => 5
    t.integer  "groupid"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "employees", :force => true do |t|
    t.integer  "eid"
    t.string   "lastname",   :limit => 50
    t.string   "firstname",  :limit => 50
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "hospitals", :force => true do |t|
    t.string   "name",       :limit => 250
    t.string   "code",       :limit => 9
    t.string   "address",    :limit => 250
    t.string   "tel"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "titles", :force => true do |t|
    t.string   "name",       :limit => 250
    t.string   "code",       :limit => 5
    t.integer  "group_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

end
