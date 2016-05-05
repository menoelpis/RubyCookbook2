# Building a String from Parts

hash = { key1: "val1", key2: "val2"}
str1 = ""
hash.each { |k,v| str1 << "#{k} is #{v}\n" }
puts str1

str2 = ""
hash.each { |k,v| str2 << k.to_s << " is not " << v << "\n"}
puts str2

puts hash.keys.join(" + ")

data = ['1', '2', '3', '4', '5']
str3 = ''
data.each { |x| str3 << x << ' and a '}
puts str3
puts data.join(' and a ')
str4 = ""
data.each_with_index { |x, i| str4 << x; str4 << "|" if i < data.length-1 }
puts str4
