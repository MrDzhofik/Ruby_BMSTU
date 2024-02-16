str = 'Тест '
str.freeze
begin
  str << 'не пройден! ' # Попытка модифицировать.
rescue StandardError => e
  puts "#{e.class} #{e}"
end
arr = [1, 2, 3]
arr.freeze
begin
  arr << 4 # Попытка модифицировать.
rescue StandardError => e
  puts "#{e.class} #{e}"
end
# TypeError: can't modify frozen string
# TypeError: can't modify frozen array
