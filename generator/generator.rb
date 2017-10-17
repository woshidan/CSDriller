require 'csv'
require 'erb'

csv_path = ARGV[0]

template_path = File.expand_path('template.erb', File.dirname($0))
erb = ERB.new(File.new(template_path).read)

csv_rows = CSV.read(csv_path)

puts erb.result(binding)
