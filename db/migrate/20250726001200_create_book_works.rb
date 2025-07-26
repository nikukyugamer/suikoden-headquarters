class CreateBookWorks < ActiveRecord::Migration[8.0]
  def change
    create_table :book_works do |t|
      t.references :work, null: false, foreign_key: true

      t.string :name_ja, null: false, comment: '書籍作品名（日本語）'
      t.string :name_en, null: false, comment: '書籍作品名（英語）'
      t.string :name_ja_furigana, null: false, comment: '書籍作品名（日本語ふりがな）'

      t.timestamps
    end
  end
end
