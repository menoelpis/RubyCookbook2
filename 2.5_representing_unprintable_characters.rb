octal = "\000\001\010\020"
octal.each_byte { |x| puts x }

hexadecimal = "\x00\x01\x10\x20"
hexadecimal.each_byte { |x| puts x }

open('smiley.html', 'wb') do |f|
  f << '<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">'
  f << "\xe2\x98\xBA"
end

p "\x48\145\x6c\x6c\157\x0a"


p "\x10\x11\xfe\xff"


p "\\".size
p "\\" == "\x5c"
p "\\n"[0] == ?\\
p "\\n"[1] == ?n
p "\\n" =~ /\n/

p "\C-a\C-b\C-c"
p "\M-a\M-b\M-c"

p ?\C-a
p ?\M-z

contains_control_chars = /[\C-a-\C-^]/
p 'Foobar' =~ contains_control_chars
p "Foo\C-zbar" =~ contains_control_chars

def snoop_on_keylog(input)
  input.each_char do |b|
    case b
      when ?\C-c; puts 'Control-C: stopped a process?'
      when ?\C-z; puts 'Control-Z: suspended a process?'
      when ?\n; puts 'Newline.'
      when ?\M-x; puts 'Meta-x: using Emacs?'
    end
  end
end

snoop_on_keylog("ls -ltR\003emacsHello\012\370rot13-other-window\012\032")

puts "foo\tbar"
puts %{foo\tbar}
puts %Q{foo\tbar}
puts 'foo\tbar'
puts %q{foo\tbar}