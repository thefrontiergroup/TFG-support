class Hash
  # Allows you to map the values of a hash. The original
  # keys will be retained.
  # 
  # ```ruby
  # {foo: 1, bar: 2}.map {|value| value * 2 } #=> {foo: 2, bar: 4}
  # ```
  #
  # The original hash is not mutated.
  def map_values
    Hash.new.tap do |result|
      self.each do |key, value|
        result[key] = yield(value)
      end
    end
  end
end