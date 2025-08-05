CONFIG_FILE = Rails.root.join('config/database.yml')
SCHEMA_FILE = Rails.root.join('db/Schemafile')

namespace :ridgepole do
  desc 'bin/rails db:migrate:reset 相当'
  task migrate_reset: :environment do
    sh "bundle exec ridgepole --config #{CONFIG_FILE} --file #{SCHEMA_FILE} --apply --drop-table"
  end

  desc 'bin/rails db:migrate 相当'
  task migrate: :environment do
    sh "bundle exec ridgepole --config #{CONFIG_FILE} --file #{SCHEMA_FILE} --apply"
  end

  desc 'db:migrate の Dry Run'
  task dry_run: :environment do
    sh "bundle exec ridgepole --config #{CONFIG_FILE} --file #{SCHEMA_FILE} --apply --dry-run"
  end
end
