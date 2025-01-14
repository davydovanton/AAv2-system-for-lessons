module App
  module Commands
    class BaseCommand
      def call
        Teacher.hello
      end
    end
  end
end
