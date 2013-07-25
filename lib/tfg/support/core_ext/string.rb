Dir[File.expand_path("../string/**/*.rb", __FILE__)].each do |file|
  require file
end