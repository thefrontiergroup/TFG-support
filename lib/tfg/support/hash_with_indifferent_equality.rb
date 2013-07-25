module TFG
  module Support
    class HashWithIndifferentEquality < BasicObject
      def initialize(hash)
        @hash = hash
      end

      def is_a?(klass)
        if klass == ::TFG::Support::HashWithIndifferentEquality
          return true
        else
          super
        end
      end

      def ==(other)
        if other.is_a?(::Hash)
          @hash.with_indifferent_access == other.with_indifferent_access
        else
          @hash == other
        end
      end

      private

      def method_missing(name, *args, &block)
        @hash.public_send(name, *args, &block)
      end
    end
  end
end