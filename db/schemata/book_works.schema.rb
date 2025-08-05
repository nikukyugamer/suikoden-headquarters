create_table "book_works", force: :cascade do |t|
  t.integer "work_id", null: false
  t.string "name_ja", null: false
  t.string "name_en", null: false
  t.string "name_ja_furigana", null: false
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
end

add_index 'book_works', ['work_id'], name: 'index_book_works_on_work_id', using: :btree

add_foreign_key 'book_works', 'works', column: 'work_id', name: 'fk_book_works_work_id'
