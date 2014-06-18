require 'csv'
require 'date'

puts "What is the first or last name of the person you are looking up?"

name = gets.chomp.capitalize

data = CSV.read('birthday_data.csv', :headers => true, :converters => :date)

cases_to_test = data.length

date_now = Date.parse('2014/06/17')

x = 0
while cases_to_test > x
  test_row = data[x]
  if (test_row[0] == name) || (test_row[1] == name)
    puts "Name: #{test_row[1]} #{test_row[0]}, DOB: #{test_row[2]}, Email: #{test_row[3]}"
    puts "#{test_row[1]} #{test_row[0]}"

    birthday = Date.parse(test_row[2])

    age = ((date_now - birthday) / 365).to_i

    puts "#{test_row[1]} has seen #{age} winters."
    break
  elsif cases_to_test == x + 1

    puts "couldn't find that person"
    break
  else
    x += 1
  end
end






# >>>>>>>>>>>>>>>>>>>>
# data = []
# CSV.foreach('birthday_data.csv') do |row|
#   data.push(row)
# end
#
# data.select{|f| f.include? name}

# >>>>>>>>>>>>>>>>>>>>
# csv = CSV.parse(csv_text, :headers => true)
# csv.each do |row|
#   puts csv.find {|row| row['last_name'] == 'name[0]'}
# end






