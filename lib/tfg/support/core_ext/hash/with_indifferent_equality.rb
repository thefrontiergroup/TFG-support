if defined? ActiveSupport
  class Hash
    # Will return a new hash that does not differentiate
    # between string and symbol keys for equality.
    #
    # ```ruby
    # {a: 1} == {"a" => 1}.with_indifferent_equality #=> true
    # ```
    def with_indifferent_equality
      TFG::Support::HashWithIndifferentEquality.new(self)
    end

    # Aliased to original {Hash#==}.
    alias_method :old_double_equals, :==

    # Check equality of hashes, considering if difference
    # between string and symbol keys should be observed.
    # See {Hash#with_indifferent_equality}.
    def ==(other)
      if other.is_a?(TFG::Support::HashWithIndifferentEquality)
        other == self
      else
        old_double_equals(other)
      end
    end
  end
end