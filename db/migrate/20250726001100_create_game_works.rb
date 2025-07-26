class CreateGameWorks < ActiveRecord::Migration[8.0]
  def change
    create_table :game_works do |t|
      t.references :work, null: false, foreign_key: true

      t.string :name_ja, null: false, comment: 'ゲーム作品名（日本語）'
      t.string :name_en, null: false, comment: 'ゲーム作品名（英語）'
      t.string :name_ja_furigana, null: false, comment: 'ゲーム作品名（日本語ふりがな）'

      t.timestamps
    end
  end
end
