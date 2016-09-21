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

ActiveRecord::Schema.define(version: 20160912045751) do

  create_table "games", primary_key: "game_id", force: :cascade do |t|
    t.string  "user_id", limit: 30, default: "", null: false
    t.string  "winner",  limit: 30, default: ""
    t.integer "status",  limit: 3,  default: 2
    t.string  "player",  limit: 30, default: "", null: false
    t.integer "userp",   limit: 8,  default: 0
    t.integer "playerp", limit: 8,  default: 0
    t.integer "userq",   limit: 8,  default: 0
    t.integer "playerq", limit: 8,  default: 0
  end

  add_index "games", ["user_id"], name: "index_games_on_user_id", using: :btree

  create_table "points", primary_key: "point_id", force: :cascade do |t|
    t.integer "game_id", limit: 8, null: false
    t.integer "x0",      limit: 1, null: false
    t.integer "y0",      limit: 1, null: false
    t.integer "x1",      limit: 1, null: false
    t.integer "y1",      limit: 1, null: false
  end

  add_index "points", ["game_id"], name: "index_points_on_game_id", using: :btree

  create_table "users", primary_key: "user_id", force: :cascade do |t|
    t.string  "name",   limit: 30, default: "", null: false
    t.string  "pass",   limit: 60, default: "", null: false
    t.integer "status", limit: 1,  default: 0
  end

end
