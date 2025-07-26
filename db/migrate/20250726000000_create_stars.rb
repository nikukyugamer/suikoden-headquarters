class CreateStars < ActiveRecord::Migration[8.0]
  def change
    create_table :stars do |t|
      t.references :character, null: false, foreign_key: true, comment: 'キャラクター'

      t.string :name_ja, null: false, comment: '宿星名（日本語）'
      t.string :name_en, null: false, comment: '宿星名（英語）'

      t.timestamps
    end
  end
end
