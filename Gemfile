source 'https://rubygems.org'

gem 'propshaft' # Sprockets の代替
gem 'puma'
gem 'rails'
gem 'sqlite3'

group :development do
  gem 'activerecord-originator' # https://pocke.hatenablog.com/entry/2024/03/13/223008
end

group :development, :test do
  gem 'debug', require: 'debug/prelude'
  gem 'repl_type_completor'

  # 型システム
  gem 'rbs-inline', require: false # RBS をソースコード内にコメントで書けるようにする
  gem 'rubocop-rbs_inline' # RBS::Inline の記述ミスを検知する (https://www.timedia.co.jp/tech/20241024-tech/)
  gem 'steep', require: false # 型チェックをする

  # RSpec
  gem 'factory_bot_rails', require: false
  gem 'rspec-rails', require: false

  # RuboCop
  gem 'rubocop-factory_bot', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rake', require: false
  gem 'rubocop-rspec_rails', require: false # rubocop-rspec は依存により入るのでこれだけでいい
end
