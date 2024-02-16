puts Time.now # => 2012-09-12 21:37:34 +0400
# Переопределим в своём файле метод Time #to_s
class Time
  # код класса находится в стандартной библиотеке!
  def to_s
    strftime '%H:%M:%S %d.%m.%Y'
  end
end
p Time.now
# Time.now().inspect -> 2012-09-12 21:45:08 +0400
puts Time.now # Time.now().to_s -> 21:45:08 12.09.2012

t1 = Time.now
t2 = t1.clone # полное копирование объекта
class << t1
  def to_s
    strftime '%H:%M:%S %d.%m.%Y'
  end
end
puts t1 # 21:49:49 12.09.2012
puts t2 # 2012-09-12 21:49:49 +0400
