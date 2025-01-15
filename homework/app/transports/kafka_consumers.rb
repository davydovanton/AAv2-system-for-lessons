# frozen_string_literal: true

module App
  module Transports
    module KafkaConsumers
      class BaseConsumer < Karafka::BaseConsumer
        def consume
          messages.each do |message|
            puts Commands::BaseCommand.new.call
            puts message.payload
          end
        end
      end

      # topic 'homeworks.get_teachers'
      class GetTeaches < Karafka::BaseConsumer
        def consume
          messages.each do |message|
            #
            # request lesson_development service GET 'api/teachers'
          end
        end
      end

      # topic 'homeworks.change_lesson_status'
      class ChangeLessonStatus < Karafka::BaseConsumer
        def consume
          messages.each do |message|
          end
        end
      end


    end
  end
end
