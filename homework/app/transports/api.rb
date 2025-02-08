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

      post 'studens/api/homeworks/' do
        'TODO'
      end

      get 'studens/api/homeworks/:lesson_id' do
        'TODO'
      end

      post 'studens/api/homeworks/:lesson_id/completed' do
        'TODO'

        # produce event ChangeTeacherBalanceEvent to 'bonuses_and_fees_service.calculate_bonuse'
      end

      get 'teachers/api/homeworks_for_review' do
        'TODO'
      end

      post 'teachers/api/homeworks/:id/review' do
        'TODO'

        # produce event HomeworkStatusChangedEvent to 'bonuses_and_fees_service.calculate_bonuse'
      end

      # для интеграции
      post 'api/studens' do
        'TODO'
      end

    end
  end
end
