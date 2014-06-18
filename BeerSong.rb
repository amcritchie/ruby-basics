puts "How many bottles should we sing?.. Ex 'Sing 88'"

while true

  answer = gets.chomp.split

  answer[1] = answer[1].to_i

  if answer[0] == ''

    puts "I need to know how many bottles to sing!"

  elsif answer[0] != 'sing' || answer[1] <= 0

    puts 'ERROR'

    break
  else

  bottles = answer[1].to_i

  while bottles > 2

    puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of Beer.  You take one down and pass it around, #{bottles - 1} bottles of beer on the wall."
    bottles -= 1

  end

  if bottles == 2
  puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of Beer.  You take one down and pass it around, #{bottles - 1} bottle of beer on the wall."
  bottles -= 1
  end
  if bottles == 1
  puts "#{bottles} bottle of beer on the wall, #{bottles} bottle of Beer.  You take it down and pass it around, no more bottles of beer on the wall."
  bottles -= 1
  end

  break
  end
end