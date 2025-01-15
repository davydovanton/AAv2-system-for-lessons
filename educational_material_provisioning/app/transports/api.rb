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

      
      post '/api/student' do
        'TODO'
        # request homework service POST '/api/students'
        #
      end

      post '/api/login' do
        'TODO'
      end

      get '/api/lessons' do
        'TODO'
      end

      post '/api/lesson/readed' do
        'TODO'
        # produce event ChangeLessonStatus to 'homeworks.change_lesson_status'
      end

      # для интеграции
      get 'api/lessons_status_changed' do
        'TODO'
      end

      post 'api/lessons' do
        'TODO'
      end
    end
  end
end
