class Hash
  def deep()
    TfgSupport::DeepHashAccessor.new(self)
  end
end
