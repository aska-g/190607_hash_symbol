require 'csv'

CSV.foreach('cities.csv') do |row|
  puts "#{row[0]} is in #{row[1]} and its famous monument is #{row[2]}"
end
