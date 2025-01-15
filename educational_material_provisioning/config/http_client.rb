require 'faraday'

BONUSES_AND_FEES_SERVICE = Faraday.new(
  url: 'https://bonuses_and_fees_service',
  headers: {'Content-Type' => 'application/json'}
)

EDUCATIONAL_MATERIAL_PROVISIONING_SERVICE = Faraday.new(
  url: 'https://educational_material_provisioning_service',
  headers: {'Content-Type' => 'application/json'}
)

HOMEWORK_SERVICE = Faraday.new(
  url: 'https://homework_service',
  headers: {'Content-Type' => 'application/json'}
)

LESSON_DEVELOPMENT_SERVICE = Faraday.new(
  url: 'https://lesson_development_service',
  headers: {'Content-Type' => 'application/json'}
)
