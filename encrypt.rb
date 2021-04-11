# encoding: utf-8
#
# Программа для шифрования слова с помощью механизма MD5, SHA1 или SHA2
#

require 'digest'

puts 'Введите слово или фразу для шифрования:'
string = STDIN.gets.chomp

puts 'Каким способом зашифровать:'
puts '1. MD5'
puts '2. SHA1'
puts '3. SHA2'
encrypt_method = STDIN.gets.to_i

until encrypt_method.between?(1, 3)
  puts 'Выберите 1 или 2'
  encrypt_method = STDIN.gets.to_i
end

puts 'Вот что получилось:'

case encrypt_method
when 1 then puts Digest::MD5.hexdigest(string)
when 2 then puts Digest::SHA1.hexdigest(string)
when 3 then puts Digest::SHA2.hexdigest(string)
end
