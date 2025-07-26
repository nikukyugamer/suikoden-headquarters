class CreateWorks < ActiveRecord::Migration[8.0]
  def change
    create_table :works do |t|
      t.string :name_ja, null: false, comment: '作品名（日本語）'
      t.string :name_en, null: false, comment: '作品名（英語）'
      t.string :name_ja_furigana, null: false, comment: '作品名（日本語）'

      t.timestamps
    end

    add_index :works, :name_ja, unique: true
    add_index :works, :name_en, unique: true
    add_index :works, :name_ja_furigana, unique: true, name: 'index_works_on_name_ja_furigana'
  end
end
