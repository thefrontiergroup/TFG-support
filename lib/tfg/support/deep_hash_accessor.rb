module TFG
  module Support
    class DeepHashAccessor
      attr_accessor :hash

      def initialize(hash)
        self.hash = hash
      end

      def [](*keys)
        head, *tail = keys

        if tail.empty?
          hash[head]
        else
          hash[head].deep[*tail]
        end
      end

      def []=(*keys, value)
        head, *tail = keys

        if tail.empty?
          hash[head] = value
        else
          hash[head] ||= Hash.new
          hash[head].deep[*tail] = value
        end
      end
    end
  end
end