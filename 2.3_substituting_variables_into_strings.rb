number = 5
puts "The number is #{number}."
puts "The number is #{5}."
puts "The number after #{number} is #{number.next}."
puts "The number prior to #{number} is #{number-1}."
puts "We're ##{number}!"

puts "#{number}" == '5'

puts %{Here is #{class InstantClass
  def bar
    "some text"
  end
end
InstantClass.new.bar
}.}

puts "I've set x to #{x = 5; x += 1}."

puts "\#{foo}"
puts '#{foo}'

template = "Oceania has always been at war with %s."
puts template % 'Eurasia'
puts template % 'Eastasia'

puts 'To 2 decimal places: %.2f' % Math::PI
puts 'Zero-padded: %.5d' % Math::PI

require 'erb'

template = ERB.new %q{Chunky <%= food %>!}
food = "bacon"
puts template.result(binding)
food = "peanut butter"
puts template.result(binding)
#puts template.result

template = %q{
	<% if problems.empty? %>
		Looks like your code is clean!
	<% else %>
		I found the following possible problems with your code:
		<% problems.each do |problem, line| %>
			* <%= problem %> on line <%= line %>
		<% end %>
	<% end %>
}.gsub(/^\s+/, '')

template = ERB.new(template, nil, '<>')

problems = [["Use of is_a? instead of duck typing", 23],
            ["eval() is usually dangerous", 44]]

template.run(binding)

problems = []
template.run(binding)

class String
  def substitute(binding=TOPLEVEL_BINDING)
    eval(%{"#{self}"}, binding)
  end
end

puts template = %q{Chunky #{food}!}

food = 'bacon'
puts template.substitute(binding)

food = 'peanut butter'
puts template.substitute(binding)

food = '#{system("dir")}'
puts template.substitute(binding)
