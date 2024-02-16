arr_a = gets.split
p arr_a
arr_a.map!(&:to_i)
p arr_a
otr = []
arr_a.each do |x|
    otr.append(x) if x < 0
end
p otr
otr = arr_a.select{|x| x if x.negative?}

if otr.length.zero?
    a = 0
else
    a = otr.inject(1){|elem, multy| elem*multy}
end
p a

len = arr_a.length - 1
p len
p "Элемент: #{arr_a[len - (len % 3)]}"
p "Index: #{len - (len % 3)}"
arr_a[len - (len % 3)] = a
p arr_a