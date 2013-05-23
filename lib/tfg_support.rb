require "tfg_support/version"

module TfgSupport
  autoload :DeepHashAccessor, "tfg_support/deep_hash_accessor"
end

class Hash
  def deep()
    TfgSupport::DeepHashAccessor.new(self)
  end
end
