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

ActiveRecord::Schema.define(version: 20171208221115) do

  create_table "matches", force: :cascade do |t|
    t.text     "away"
    t.integer  "a_score"
    t.text     "home"
    t.integer  "h_score"
    t.integer  "week"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.string   "abr"
    t.integer  "win"
    t.integer  "loss"
    t.integer  "hw"
    t.integer  "hl"
    t.integer  "aw"
    t.integer  "al"
    t.integer  "pf"
    t.integer  "pa"
    t.integer  "division"
    t.integer  "playoffs"
    t.integer  "pennants"
    t.integer  "championships"
    t.string   "div"
    t.string   "league"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
