require 'digest'

puts 'Введите слово или фразу для шифрования:'
string = STDIN.gets.chomp

puts 'Каким способом зашифровать:'
puts '1. MD5'
puts '2. SHA1'
encrypt_method = STDIN.gets.to_i

until encrypt_method.between?(1, 2)
  puts 'Выберите 1 или 2'
  encrypt_method = STDIN.gets.to_i
end

puts 'Вот что получилось:'

case encrypt_method
when 1 then puts Digest::MD5.hexdigest(string)
when 2 then puts Digest::SHA1.hexdigest(string)
end
