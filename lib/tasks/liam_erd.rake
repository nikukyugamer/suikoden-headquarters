namespace :liam_erd do
  desc 'Liam ERD を用いてスキーマの HTML の出力を行う'
  task output: :environment do
    input_schema_full_path = '/tmp/all_schema_file_strings.rb'
    output_dir_full_path = Rails.root.join('db/liam_erd/')

    schema_files = Rails.root.join('db').glob('schemata/*.schema.rb')
    all_schema_file_strings = schema_files.map(&:read).join("\n")
    File.write(input_schema_full_path, all_schema_file_strings)

    sh "npx @liam-hq/cli erd build --format schemarb --input #{input_schema_full_path} --output-dir #{output_dir_full_path}"

    File.rm(input_schema_full_path)
  end

  desc 'Liam ERD の内容を http-server を用いて提供する'
  task serve: :environment do
    sh 'npx http-server -c-1 db/liam_erd/'
  end
end
