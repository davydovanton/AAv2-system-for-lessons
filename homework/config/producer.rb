require 'waterdrop'

class BuildProducer
  def call
    WaterDrop::Producer.new do |config|
      config.deliver = true
      config.kafka = {
        'bootstrap.servers': 'localhost:9092',
        'request.required.acks': 1
      }
    end
  end
end

# producer = BuildProducer.new.call
# producer.new.produce_sync(topic: 'my-topic', payload: { hello: 'world' }.to_json)
