s = ".sdrawkcab si gnirts sihT"
s.reverse
puts s

s.reverse!
puts s

s = "order. wrong the in are words These"
puts s.split(/(\s+)/).reverse!.join('')
puts s.split(/\b/).reverse!.join('')

array1 =  "Three little words".split(/\s+/)
p array1
array2 = "Three little words".split(/(\s+)/)
p array2