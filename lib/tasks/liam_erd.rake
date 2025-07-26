namespace :liam_erd do
  desc 'Liam ERD を用いてスキーマの HTML の出力を行う'
  task output: :environment do
    input_schema_full_path = Rails.root.join('db/schema.rb')
    output_dir_full_path = Rails.root.join('db/liam_erd/')

    sh "npx @liam-hq/cli erd build --format schemarb --input #{input_schema_full_path} --output-dir #{output_dir_full_path}"
  end
end
