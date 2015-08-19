require 'csv'

customers = CSV.read('customers.csv')

CSV.foreach('customers.csv') do |row|
  puts row.inspect
end

a_string = "Dan,34\nMaria,55"
CSV.parse(a_string) { |row| puts row.inspect } 
#=> produces ["Dan", "34"] and ["Maria", "55"] on separate lines