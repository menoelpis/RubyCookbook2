# Turn a symbol intoa string

p :a_symbol.to_s
p :AnotherSymbol.id2name
p :"Yet another symbol!".to_s

# Reference a symbol by its name

p :dodecahedron.object_id
symbol_name = "dodecahedron"
p symbol_name.intern
p symbol_name.intern.object_id

# Symbols save memory and time

p "string".object_id
p "string".object_id
p :symbol.object_id
p :symbol.object_id

# Comparison speed
p "string1" == "string2"
p :symbol1 == :symbol2