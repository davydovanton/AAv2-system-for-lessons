# require File.expand_path( '../../../app.rb', __FILE__ )
require 'fileutils'
require 'sequel'
require 'yaml'

require_relative '../../config/db.rb'

Sequel.extension :migration

PATH_MIGRATIONS = File.expand_path( '../../../db/migrations', __FILE__ ).freeze unless defined? PATH_MIGRATIONS

namespace :db do
  # Ex. rake db:migrate[5]
  desc 'Run migrations'
  task :migrate, [ :version ] do |_t, args|
    if args[:version]
      puts "Migrating to version #{args[:version]}"
      Sequel::Migrator.run(DB, PATH_MIGRATIONS, target: args[:version].to_i)
    else
      puts 'Migrating to latest' # unless ENV['RACK_ENV'] == 'test'
      Sequel::Migrator.run(DB, PATH_MIGRATIONS)
    end
  end

  desc 'Reset database'
  task :reset do |_t, _args|
    puts 'Reset DB' # unless ENV['RACK_ENV'] == 'test'
    Sequel::Migrator.run(DB, PATH_MIGRATIONS, target: 0)
  end
end
