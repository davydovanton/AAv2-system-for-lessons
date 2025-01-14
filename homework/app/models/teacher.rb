class Teacher < Sequel::Model
  plugin :timestamps, update_on_create: true

  def self.hello
    'hello from model Teacher'
  end
end
