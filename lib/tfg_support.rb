require "tfg/support/version"

if defined? ActiveSupport
  require "active_support/core_ext/hash/indifferent_access"
end

module TFG
  module Support
    autoload :DeepHashAccessor, "tfg/support/deep_hash_accessor"
    autoload :Sequence, "tfg/support/sequence"
    autoload :HashWithIndifferentEquality, "tfg/support/hash_with_indifferent_equality"
  end
end

Dir[File.expand_path("../tfg/support/core_ext/**/*.rb", __FILE__)].each do |file|
  require file
end