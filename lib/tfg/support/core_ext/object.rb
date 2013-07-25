Dir[File.expand_path("../object/**/*.rb", __FILE__)].each do |file|
  require file
end