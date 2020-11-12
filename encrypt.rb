require 'digest'

puts "Введите слово или фразу для шифрования"
text = gets.chomp

puts "Каким способом зашифровать"
puts "1. MD5"
puts "2. SHA1"
puts "3. SHA2"

encrypt_method = gets.to_i

until encrypt_method.between?(1..3)
  puts "Выберите 1, 2 или 3"
  encrypt_method = gets.to_i
end

puts "Вот что получилось"

if encrypt_method == 1
  puts Digest::MD5.hexdigest text
elsif encrypt_method == 2
  puts Digest::SHA1.hexdigest text
else
  puts Digest::SHA2.hexdigest text
end

