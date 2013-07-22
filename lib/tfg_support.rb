require "tfg/support/version"

module TFG
  module Support
    autoload :DeepHashAccessor, "tfg/support/deep_hash_accessor"
    autoload :Sequence, "tfg/support/sequence"
  end
end

Dir["tfg/support/core_ext/**/*"].each do |file|
  require file
end