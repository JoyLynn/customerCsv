require 'csv'

customers = CSV.read('customers.csv', { :col_sep => ';' })

CSV.foreach('customers.csv') do |row|
  puts row.inspect
end

a_string = "Dan,34\nMaria,55"
CSV.parse(a_string) { |row| puts row.inspect } 
#=> produces ["Dan", "34"] and ["Maria", "55"] on separate lines

CSV.parse(File.read('customers.csv')) 
# File.read returns a (big) string of the data in 'customers.csv', comma-separated
# and CSV.parse just re-structures that data into an array data structure.