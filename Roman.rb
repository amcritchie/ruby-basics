puts "Please enter a positive number, under 4000."

while true
  number = gets.chomp.to_i
  if number >= 3999
    puts "Opps, that number is to large for roman numerals.  Please choose a number under 4000"
  end
  if number < 0
    puts "Please enter a 'Positive' number under 4000"
  end
  if number > 0 && number <= 3999
    break
  end
end

digits = number.to_s.length.to_i
roman = ''
t = 0

while digits > 0

  digit = (number % (10**(t+1)))/(10**(t))
  number = number - (digit * (10**(t)))

  if t == 0
    unit = "I"
    half = "V"
    full = "X"
  elsif t == 1
    unit = "X"
    half = "L"
    full = "C"
  elsif t == 2
    unit = "C"
    half = "D"
    full = "M"
  else
    unit = "M"
  end

  if digit == 9
    roman = "#{unit}#{full}" + roman
  elsif digit >= 5
    roman = "#{half}#{unit*(digit-5)}" + roman
  elsif digit == 4
    roman = "#{unit}#{half}" + roman
  else
    roman = "#{unit*(digit)}" + roman
  end

  digits -= 1
  t += 1
end

puts roman
