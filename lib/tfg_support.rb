require "tfg/support/version"

module TFG
  module Support
    autoload :DeepHashAccessor, "tfg/support/deep_hash_accessor"
    autoload :Sequence, "tfg/support/sequence"
  end
end

Dir[File.expand_path("../tfg/support/core_ext/**/*.rb", __FILE__)].each do |file|
  require file
end