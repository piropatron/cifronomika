class PasswordGenerator

    def initialize
        @syllables =  %w(ba  bo  bi  bu  by  be
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
    end

    def create_human_readable_password( password_length = 8 )
        password = []
        number_part_password = password_length.even? ? rand(10..99) : rand(1..9)
        length = ( password_length - number_part_password.to_s.length ) / 2
        syllables_length = @syllables.length
        length.times do
            password << @syllables[rand(syllables_length)]
        end
        "#{password.join('').capitalize}#{number_part_password}"
    end

end

puts(PasswordGenerator.new.create_human_readable_password 8)
