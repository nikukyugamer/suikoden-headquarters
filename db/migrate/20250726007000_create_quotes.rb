class CreateQuotes < ActiveRecord::Migration[8.0]
  def change
    create_table :quotes do |t|
      t.string :context_ja, null: false, comment: 'セリフ（日本語）'
      t.string :context_en, null: false, comment: 'セリフ（英語）'

      t.string :scene, null: false, comment: 'シーン'

      t.timestamps
    end
  end
end
