class Hash
  # Allows chaining of keys through nested hashes.
  #
  # ```ruby
  # hash = {foo: true, bar: {baz: {qux: false}}}
  #
  # hash.deep[:foo] #=> true
  # hash.deep[:bar, :baz, :qux] #=> false
  # ```
  #
  # When the chain of keys is incomplete `nil` will be returned.
  #
  # ```ruby
  # hash[:bar, :qux] #=> nil
  # ```
  #
  # Assignment is also possible, and the key chain will be created
  # if needed.
  #
  # ```ruby
  # hash = {}
  # hash[:foo, :bar] = true
  # hash #=> {foo: {bar: true}}
  # ```
  def deep
    TFG::Support::DeepHashAccessor.new(self)
  end
end