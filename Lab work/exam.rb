def find_sum(num)
  expert = num
  sum = 0
  while expert.nonzero?
    digit = expert % 10
    sum += digit
    expert /= 10
  end
  sum
end

numbers = gets.split.map{|x| x.to_i }

max = 0
max_index = 0
numbers.each_with_index do |elem, index|
  summa = find_sum(elem)
  if summa > max
    max = summa
    max_index = index
  end
end

p "Самое большое число: #{numbers[max_index]}"
p "Sum: #{max}"
