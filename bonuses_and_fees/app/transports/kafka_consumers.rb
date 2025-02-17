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

      # все три консьюмера засунуть в одиин

      # topic 'bonuses_and_fees_service.calculate_bonuse'
      class CalculateBonuse < Karafka::BaseConsumer
        def consume
          messages.each do |message|
            # TODO
            #
            # consume 3 different events in one place
            #
            # CalculateBonuseFromCreatedLessonsEvent
            # ChangeTeacherBalanceEvent
            # HomeworkStatusChangedEvent
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

      # topic 'bonuses_and_fees_service.pay_to_teacher'
      class PayToTeaches < Karafka::BaseConsumer
        def consume
          messages.each do |message|
            # call CreateInvoice command
          end
        end
      end
    end
  end
end
