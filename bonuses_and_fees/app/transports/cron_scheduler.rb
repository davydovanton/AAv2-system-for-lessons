
# producer = BuildProducer.new.call
# producer.produce_sync(topic: 'bonuses_and_fees_service.calculate_bonuse', payload: { ... }.to_json) # CalculateBonuseFromCreatedLessonsEvent

# every N time
# producer.produce_sync(topic: 'bonuses_and_fees_service.get_teachers', payload: { ... }.to_json)

# every N time
# producer.produce_sync(topic: 'bonuses_and_fees_service.pay_to_teacher', payload: { ... }.to_json)
