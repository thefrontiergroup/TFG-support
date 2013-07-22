class String
  # Attempts to cast the string to `true` or `false`. This is done
  # by comparison with known truthy and falsey values.
  #
  # ```ruby
  # "Yes".to_boolean #=> true
  # "1".to_boolean #=> true
  #
  # "NO".to_boolean #=> false
  # "FaLsE".to_boolean #=> false
  # ```
  #
  # @raise ArgumentError when the string does not match either a
  #   truthey or falsey value.
  def to_boolean
    return true if self =~ (/\A(true|t|yes|y|1)\Z/i)
    return false if self =~ (/\A(false|f|no|n|0)\Z/i)

    raise ArgumentError.new("String \"#{self}\" cannot be cast to boolean.")
  end
end
