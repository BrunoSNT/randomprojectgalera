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

ActiveRecord::Schema.define(version: 2019_06_04_215117) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adventures", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "theme_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["theme_id"], name: "index_adventures_on_theme_id"
  end

  create_table "alignments", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "char_name"
    t.text "background"
    t.bigint "faction_id"
    t.bigint "profession_id"
    t.bigint "alignment_id"
    t.bigint "adventure_id"
    t.bigint "user_id"
    t.integer "experience"
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "wisdom"
    t.integer "charisma"
    t.integer "armor_class"
    t.integer "initiative"
    t.integer "hit_points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["adventure_id"], name: "index_characters_on_adventure_id"
    t.index ["alignment_id"], name: "index_characters_on_alignment_id"
    t.index ["faction_id"], name: "index_characters_on_faction_id"
    t.index ["profession_id"], name: "index_characters_on_profession_id"
    t.index ["user_id"], name: "index_characters_on_user_id"
  end

  create_table "factions", force: :cascade do |t|
    t.string "name"
    t.bigint "alignment_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alignment_id"], name: "index_factions_on_alignment_id"
  end

  create_table "inventories", force: :cascade do |t|
    t.bigint "character_id"
    t.integer "gold"
    t.integer "silver"
    t.integer "copper"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_inventories_on_character_id"
  end

  create_table "items", force: :cascade do |t|
    t.bigint "inventory_id"
    t.string "name"
    t.integer "damage"
    t.integer "bonus"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inventory_id"], name: "index_items_on_inventory_id"
  end

  create_table "professions", force: :cascade do |t|
    t.string "name"
    t.integer "str_bonus"
    t.integer "dex_bonus"
    t.integer "con_bonus"
    t.integer "int_bonus"
    t.integer "wis_bonus"
    t.integer "cha_bonus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "themes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "adventures", "themes"
  add_foreign_key "characters", "adventures"
  add_foreign_key "characters", "alignments"
  add_foreign_key "characters", "factions"
  add_foreign_key "characters", "professions"
  add_foreign_key "characters", "users"
  add_foreign_key "factions", "alignments"
  add_foreign_key "inventories", "characters"
  add_foreign_key "items", "inventories"
end
