require 'json'
require 'yaml'

require 'sequel'
require 'sqlite3'

DB = Sequel.connect('sqlite://database.db')

Sequel::Model.plugin :association_pks
Sequel::Model.plugin :json_serializer
Sequel::Model.plugin :nested_attributes
Sequel::Model.plugin :timestamps

Dir["./app/models/*.rb"].each { |model| require model }
