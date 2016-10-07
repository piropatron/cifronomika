#!/usr/bin/env ruby
class Pistol
  def initialize(count_of_bullets = 6)
    @count_of_bullets = count_of_bullets
    @holder = Array.new(@count_of_bullets, false)
  end


  def charge_holder(count_bullet)
    raise Exception('Count bullet must be from 1 to 6.') if count_bullet < 1 || count_bullet > @count_of_bullets
    count_bullet.times do |i|
      place = rand(@count_of_bullets)
      redo if @holder[place]
      @holder[place] = true
    end
  end

  def twist_drum
    rand(@count_of_bullets)
  end

  def shot(place)
    @holder[place]
  end
end

##### GAME ######
users = ['Computer', 'Me'].shuffle

pistol = Pistol.new
pistol.charge_holder 3

users.cycle do |user|
  next unless pistol.shot(pistol.twist_drum)

  puts "#{user} die ("
  break
end