puts "Say something"

response = gets.chomp

if response != response.upcase

  puts "HUH?! SPEAK UP SONNY!"

else

  year = 1930 + rand(20)

  puts "NO, NOT SINCE #{year}!"

end

