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

      # topic 'bonuses_and_fees_service.calculate_bonuse'
      class CalculateBonuse < Karafka::BaseConsumer
        def consume
          messages.each do |message|
            #
          end

        end
      end

      # topic 'bonuses_and_fees_service.calculate_bonuse_from_completed_lessons'
      class CalculateBonuseFromCompletedLessons < Karafka::BaseConsumer
        def consume
          messages.each do |message|
            # request educational_material_provisioning service GET 'api/lessons_status_changed'
          end

        end
      end

      # topic 'bonuses_and_fees_service.get_teachers'
      class GetTeaches < Karafka::BaseConsumer
        def consume
          messages.each do |message|
            #
            # request lesson_development service GET 'api/teachers'
          end
        end
      end
    end
  end
end
