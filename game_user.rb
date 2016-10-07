#!/usr/bin/env ruby
print 'Загаданное число: '
user_number = gets.to_i

count_step = rand(1..10)
numbers = (1..10).to_a
count_step.times do
  number = numbers.sample()
  puts "Computer number: #{number}"
  if number == user_number
    puts 'Computer win!!!'
    break
  end
  result = gets.chomp
  if result == '>'
    numbers.reject! { |a| a < number }
  elsif result == '<'
    numbers.reject! { |a| a > number }
  else
    puts 'Ты напечатал ересь !'
    redo
  end
end