class PasswordGenerator

  Syllables = %w(ba  bo  bi  bu  by  be
                 va  vo  vi  vu  vy  ve
                 ga  go  gi  gu  gy  ge
                 da  do  di  du  dy  de
                 za  zo  zi  zu  zy  ze
                 ka  ko  ki  ku  ky  ke
                 la  lo  li  lu  ly  le
                 ma  mo  mi  mu  my  me
                 na  no  ni  nu  ny  ne
                 pa  po  pi  pu  py  pe
                 ra  ro  ri  ru  ry  re
                 sa  so  si  su  sy  se
                 ta  to  ti  tu  ty  te
                 fa  fo  fi  fu  fy  fe
                 ha  ho  hi  hu  hy  he)

  def initialize
    @length = 8
  end

  def create(length)
    @length = length
    @int_part = int_part
    "#{string_part.join('').capitalize}#{@int_part}"
  end

  private
  def int_part
    rand( @length.even? ? 10..99 : 1..9 )
  end

  def string_part
    length = (@length - @int_part.to_s.length) / 2
    (1..length).collect{ Syllables[rand(Syllables.length - 1)] }
  end

end

puts PasswordGenerator.new.create 8
