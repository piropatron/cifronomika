#!/usr/bin/env ruby
class Pistol
  @holder
  @count_of_bullets

  def initialize(count_of_bullets = 6)
    @count_of_bullets = count_of_bullets
    @holder = Array.new( @count_of_bullets, 0 )
  end


  def charge_holder count_bullet
    raise Exception('Count bullet must be from 1 to 6.') if count_bullet < 1 or count_bullet > @count_of_bullets
    for i in (1..count_bullet)
      place = rand(@count_of_bullets)
      if @holder[place].equal? 1
        redo
      else
        @holder[place] = 1
      end
    end
  end


  def twist_drum
    rand(@count_of_bullets)
  end

  def shot plase
    @holder[plase]
  end

end

##### GAME ######
users = ['Computer', 'Me']
users.shuffle!

# game start
pistol = Pistol.new
pistol.charge_holder 1

level = 0

begin
  shot = pistol.shot(pistol.twist_drum)
  if shot == 1
    user = users[ level % 2 ]
    puts "#{user} die ("
    break
  end
  level += 1
end while shot != 1

