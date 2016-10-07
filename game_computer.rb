#!/usr/bin/env ruby
print 'Количество шагов: '
count_step = gets.to_i
computer_number = rand(1...10)

count_step.times do
  print 'Ваше число: '
  user_number = gets.to_i

  abort 'Вы выиграли !!!' if computer_number == user_number

  puts user_number > computer_number ? 'Меньше' : 'Больше'
end

puts 'Компьютер выиграл !!!'