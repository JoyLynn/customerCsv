require 'csv'

customers = CSV.read('customers.csv', col_sep: ';', converters: :numeric)

average_money_spent = Array.new
CSV.foreach('customers.csv', converters: :numeric) do |row|
  # puts row.inspect
   average_money_spent << row[2] / row[1]
    # row is just an ordinary array and you access its elements with []
  end #=> Undefined method '/' for "2548":String

a_string = "Dan,34\nMaria,55"
CSV.parse(a_string) { |row| puts row.inspect } 
#=> produces ["Dan", "34"] and ["Maria", "55"] on separate lines

CSV.parse(File.read('customers.csv')) 
# File.read returns a (big) string of the data in 'customers.csv', comma-separated
# and CSV.parse just re-structures that data into an array data structure.


new_customers = CSV.read('newcomers.csv', { :col_sep => ';' })
CSV.foreach('newcomers.csv', { :col_sep => ';' }) { |row| p row }

CSV.foreach('newcomers.csv', col_sep: ';') { |row| p row }
a_string = "Dan;34\nMaria;55"
CSV.parse(a_string, col_sep: ';') #=> [["Dan", "34"], ["Maria", "55"]]