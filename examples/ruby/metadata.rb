s = 'Hello'
n = 237
s_c = s.class
n_c = n.class
# String
# Fixnum
n = 9_876_543_356_210
p n.instance_of? Integer
p n.instance_of? Integer
p n.is_a? Integer
p n.is_a? Integer
p n.is_a? Integer
p n.is_a? Integer
p n.is_a? Numeric
p n.is_a? Object
p n.is_a? String
p n.is_a? Array
# true
# false
# true
# true
# true
# true
# true
# true
# false
# false
# Проверка отношений
# наследования классов
p Integer < Numeric
# true
p Integer < Object
# true
p Object == Array
# false
p IO >= File
# true
p Float < Integer
# nil

# kind_of? #is_a? – true => объект является экземпляром указанного класса или его предков
# instance_of? – true => объект является экземпляром строго указанно класса
