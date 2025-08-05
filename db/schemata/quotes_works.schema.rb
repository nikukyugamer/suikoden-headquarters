create_table "quotes_works", force: :cascade do |t|
  t.integer "quote_id", null: false
  t.integer "work_id", null: false
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
end

add_index 'quotes_works', ['quote_id'], name: 'index_quotes_works_on_quote_id', using: :btree
add_index 'quotes_works', ['work_id'], name: 'index_quotes_works_on_work_id', using: :btree

add_foreign_key 'quotes_works', 'quotes', column: 'quote_id', name: 'fk_quotes_works_quote_id'
add_foreign_key 'quotes_works', 'works', column: 'work_id', name: 'fk_quotes_works_work_id'
