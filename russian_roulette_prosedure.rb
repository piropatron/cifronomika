#!/usr/bin/env ruby
pistol = Array.new(6, false)
pistol[ rand(6) ] = true

['Computer', 'Me'].shuffle.cycle do |user|
  next unless pistol[ rand(6) ]
  puts "#{user} die ("
  break
end