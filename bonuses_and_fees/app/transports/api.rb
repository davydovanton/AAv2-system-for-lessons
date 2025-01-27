require 'sinatra/base'

module App
  module Transports
    class API < Sinatra::Application
      set :server, 'webrick'

      get '/' do
        producer = BuildProducer.new.call
        producer.produce_sync(topic: 'my-topic', payload: { hello: 'world' }.to_json)
        result = Commands::BaseCommand.new.call
        result.inspect
      end

      get 'teachers/api/balance' do
        'TODO'
      end

      # для интеграции
      post 'api/calculate_bonus/:teacher_id' do
        'TODO'
      end
    end
  end
end
