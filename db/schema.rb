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

ActiveRecord::Schema[8.0].define(version: 2025_07_26_006000) do
  create_table "book_works", force: :cascade do |t|
    t.integer "work_id", null: false
    t.string "name_ja", null: false
    t.string "name_en", null: false
    t.string "name_ja_furigana", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["work_id"], name: "index_book_works_on_work_id"
  end

  create_table "character_appearances", force: :cascade do |t|
    t.integer "character_id", null: false
    t.integer "work_id", null: false
    t.string "notes", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_character_appearances_on_character_id"
    t.index ["work_id"], name: "index_character_appearances_on_work_id"
  end

  create_table "character_nicknames", force: :cascade do |t|
    t.string "nickname_ja", null: false
    t.string "nickname_en", null: false
    t.string "nickname_ja_furigana", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters", force: :cascade do |t|
    t.integer "star_id", null: false
    t.string "name_ja", null: false
    t.string "name_en", null: false
    t.string "name_ja_furigana", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["star_id"], name: "index_characters_on_star_id", unique: true
  end

  create_table "characters_character_nicknames", force: :cascade do |t|
    t.integer "character_id", null: false
    t.integer "character_nickname_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_characters_character_nicknames_on_character_id"
    t.index ["character_nickname_id"], name: "index_characters_character_nicknames_on_character_nickname_id"
  end

  create_table "game_platforms", force: :cascade do |t|
    t.integer "game_work_id", null: false
    t.string "name_ja", null: false
    t.string "name_en", null: false
    t.string "name_ja_furigana", null: false
    t.string "release_date_ja", null: false
    t.string "release_date_en", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_work_id"], name: "index_game_platforms_on_game_work_id"
  end

  create_table "game_works", force: :cascade do |t|
    t.integer "work_id", null: false
    t.string "name_ja", null: false
    t.string "name_en", null: false
    t.string "name_ja_furigana", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["work_id"], name: "index_game_works_on_work_id"
  end

  create_table "stars", force: :cascade do |t|
    t.integer "character_id", null: false
    t.string "name_ja", null: false
    t.string "name_en", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_stars_on_character_id"
  end

  create_table "works", force: :cascade do |t|
    t.string "name_ja", null: false
    t.string "name_en", null: false
    t.string "name_ja_furigana", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name_en"], name: "index_works_on_name_en", unique: true
    t.index ["name_ja"], name: "index_works_on_name_ja", unique: true
    t.index ["name_ja_furigana"], name: "index_works_on_name_ja_furigana", unique: true
  end

  add_foreign_key "book_works", "works"
  add_foreign_key "character_appearances", "characters"
  add_foreign_key "character_appearances", "works"
  add_foreign_key "characters", "stars"
  add_foreign_key "characters_character_nicknames", "character_nicknames"
  add_foreign_key "characters_character_nicknames", "characters"
  add_foreign_key "game_platforms", "game_works"
  add_foreign_key "game_works", "works"
  add_foreign_key "stars", "characters"
end
