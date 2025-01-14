require_relative './db.rb'
require_relative './producer.rb'

Dir["./app/commands/*.rb"].each { |command| require command }
Dir["./app/read_models/*.rb"].each { |read_model| require read_model }
