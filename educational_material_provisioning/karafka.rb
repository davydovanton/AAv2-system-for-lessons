# frozen_string_literal: true

require 'karafka'

# App class
class KafkaConsumer < Karafka::App
  setup do |config|
    config.concurrency = 5
    config.max_wait_time = 1_000
    config.kafka = { 'bootstrap.servers': 'localhost:9092' }
  end
end

Karafka.monitor.subscribe(Karafka::Instrumentation::LoggerListener.new)
Karafka.monitor.subscribe(Karafka::Instrumentation::ProctitleListener.new)
Karafka.producer.monitor.subscribe(
  WaterDrop::Instrumentation::LoggerListener.new(
    Karafka.logger,
    # If you set this to true, logs will contain each message details
    # Please note, that this can be extensive
    log_messages: false
  )
)

require_relative './config/init.rb'
require './app/transports/kafka_consumers.rb'

KafkaConsumer.consumer_groups.draw do
  consumer_group :batched_group do
    topic :'my-topic' do
      config(partitions: 1)
      consumer App::Transports::KafkaConsumers::BaseConsumer
    end
  end
end
