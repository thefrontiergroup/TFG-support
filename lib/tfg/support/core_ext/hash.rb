Dir[File.expand_path("../hash/**/*.rb", __FILE__)].each do |file|
  require file
end