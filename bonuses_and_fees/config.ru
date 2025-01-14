# Launch with:
# rackup -p 4567

require 'rack'

require_relative './config/init.rb'
require_relative './app/transports/api.rb'

# run API
run App::Transports::API
