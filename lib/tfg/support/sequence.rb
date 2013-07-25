module TFG
  module Support
    class Sequence
      def initialize(first, generator)
        self.first = first
        self.generator = generator
      end

      def next
        if previous
          self.previous = generator.call(previous)
        else
          self.previous = first
        end
      end

      private

      attr_accessor :first, :previous, :generator
    end
  end
end