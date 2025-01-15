require_relative './db.rb'
require_relative './producer.rb'
require_relative './http_client.rb'

Dir["./app/commands/*.rb"].each { |command| require command }
Dir["./app/read_models/*.rb"].each { |read_model| require read_model }
