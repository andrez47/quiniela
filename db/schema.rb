# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100601050502) do

  create_table "games", :force => true do |t|
    t.integer  "team1_id"
    t.integer  "team2_id"
    t.integer  "score1"
    t.integer  "score2"
    t.string   "phase"
    t.integer  "number"
    t.string   "winner"
    t.date     "date"
    t.datetime "update_date"
  end

  create_table "predictions", :force => true do |t|
    t.integer "user_id"
    t.integer "game_id"
    t.integer "score1"
    t.integer "score2"
    t.string  "winner"
    t.integer "points"
  end

  create_table "teams", :force => true do |t|
    t.string  "name"
    t.string  "code"
    t.string  "group_name"
    t.integer "group_position"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.integer  "user_type",                 :default => 0
    t.string   "country"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "team_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
