require 'digest'

puts "Введите слово или вразу для шифорования"
text = gets.chomp

puts "Каким способом зашифровать"
puts "1. MD5"
puts "2. SHA1"

option = nil

until option == 1 || option == 2 do
  option = gets[0]
end

if option == 1
  result = Digest::MD5.hexdigest text
else
  result = Digest::SHA1.hexdigest text
end

puts "Вот что получилось"
puts result
