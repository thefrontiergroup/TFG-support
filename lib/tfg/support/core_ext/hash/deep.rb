class Hash
  def deep
    TFG::Support::DeepHashAccessor.new(self)
  end
end