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

        # провалидировать данные об ученике
        # создать запись в learners таблице

        # request homework service POST '/api/students'
        #
      end

      post '/api/login' do
        'TODO'
      end

      get '/api/lessons' do
        'TODO'
      end

      # change to read
      post '/api/lesson/change_status' do
        'TODO'
        # produce event ChangeLessonStatus to 'homeworks.change_lesson_status'
      end

      # для интеграции
      get 'api/lessons_status_changed' do
        # просто all_lessons отдавать
        'TODO'
      end

      post 'api/lessons' do
        'TODO'
      end
    end
  end
end
