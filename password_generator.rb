class PasswordGenerator
  SYLLABLES = %w(ba  bo  bi  bu  by  be
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
                 ha  ho  hi  hu  hy  he).freeze

  def generate( length = 8 )
    number_part = generate_number_part(length)
    "#{generate_string_part(length, number_part)}#{number_part}"
  end


  private

  def generate_number_part(length)
     rand( length.even? ? 10..99 : 1..9 ).to_s
  end

  def generate_string_part(length, number_part)
    length = (length - number_part.length) / 2
    (1..length).collect{ SYLLABLES[rand(SYLLABLES.length - 1)] }.join('').capitalize
  end
end

puts PasswordGenerator.new.generate 8
