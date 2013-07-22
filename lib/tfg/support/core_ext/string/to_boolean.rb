class String
  def to_boolean
    return true if self =~ (/\A(true|t|yes|y|1)\Z/i)
    return false if self =~ (/\A(false|f|no|n|0)\Z/i)

    raise ArgumentError.new("String \"#{self}\" cannot be cast to boolean.")
  end
end
