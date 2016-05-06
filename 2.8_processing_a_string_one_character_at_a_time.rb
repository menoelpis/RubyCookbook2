'foobar'.each_byte { |x| puts "#{x} = #{x.chr}" }

'foobar'.scan(/./) { |c| puts c }

french = "\xc3\xa7a va"
french.scan(/./) { |c| puts c }