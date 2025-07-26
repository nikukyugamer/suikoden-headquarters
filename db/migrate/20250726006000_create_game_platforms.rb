class CreateGamePlatforms < ActiveRecord::Migration[8.0]
  def change
    create_table :game_platforms do |t|
      t.references :game_work, null: false, foreign_key: true, comment: 'ゲーム作品'

      t.string :name_ja, null: false, comment: 'プラットフォーム名（日本語）'
      t.string :name_en, null: false, comment: 'プラットフォーム名（英語）'
      t.string :name_ja_furigana, null: false, comment: 'プラットフォーム名（日本語ふりがな）'

      t.string :release_date_ja, null: false, comment: '発売日（日本）'
      t.string :release_date_en, null: false, comment: '発売日（北米）'

      t.timestamps
    end
  end
end
