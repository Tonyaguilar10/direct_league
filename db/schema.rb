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

ActiveRecord::Schema.define(version: 2022_06_03_134012) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fields", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "street_name"
    t.string "country"
    t.integer "street_number"
    t.integer "zip_code"
    t.integer "telephone"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "matches", force: :cascade do |t|
    t.integer "home_team_id"
    t.integer "away_team_id"
    t.datetime "match_date"
    t.text "description"
    t.integer "minutes_duration"
    t.bigint "field_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "match_size"
    t.integer "home_goals"
    t.integer "away_goals"
    t.index ["field_id"], name: "index_matches_on_field_id"
  end

  create_table "memberships", force: :cascade do |t|
    t.boolean "status"
    t.bigint "user_id", null: false
    t.bigint "team_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["team_id"], name: "index_memberships_on_team_id"
    t.index ["user_id"], name: "index_memberships_on_user_id"
  end

  create_table "requests", force: :cascade do |t|
    t.boolean "status"
    t.text "content"
    t.integer "challenger_team_id"
    t.integer "opponent_team_id"
    t.datetime "proposed_match_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "proposed_duration"
    t.bigint "field_id", null: false
    t.index ["field_id"], name: "index_requests_on_field_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "team_name"
    t.integer "team_wins", default: 0
    t.integer "team_defeats", default: 0
    t.integer "team_draws", default: 0
    t.string "team_banner"
    t.string "team_logo"
    t.string "country"
    t.string "city"
    t.string "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "zip_code"
    t.integer "size"
    t.index ["user_id"], name: "index_teams_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "avatar"
    t.string "gender"
    t.string "country"
    t.string "description"
    t.string "available_days"
    t.integer "age"
    t.integer "zip_code"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "matches", "fields"
  add_foreign_key "memberships", "teams"
  add_foreign_key "memberships", "users"
  add_foreign_key "requests", "fields"
  add_foreign_key "teams", "users"
end
