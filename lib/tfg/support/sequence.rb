module TFG
  module Support
    class Sequence

      def initialize(args, &block)
        @current_value, @generator = args, block
      end

      # return the next element in the sequence
      def next
        @current_value = @generator.call(@current_value) if @called
        @called = true
        @current_value
      end
    end
  end
end