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
    end
  end
end
