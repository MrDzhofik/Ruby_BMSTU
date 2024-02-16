class Metal
  @@current_temp = 70 # переменная, общая для всех экземпляров!
  attr_accessor :atomic_number

  def self.current_temp=(x)
    @@current_temp = x
  end

  def self.current_temp
    @@current_temp
  end

  def liquid?
    @@current_temp >= @melting
  end

  def initialize(atnum, melt)
    @atomic_number = atnum # атомный номер элемента
    @melting = melt
    # температура плавления
  end
end

# создаём 3 объекта класса Metal
aluminum = Metal.new(13, 1236)
copper = Metal.new(29, 1982)
gold = Metal.new(79, 1948)
# устанавливаем общую температуру
Metal.current_temp = 1600
# смотрим, кто расплавился
puts aluminum.liquid? # true
puts copper.liquid?
# false
puts gold.liquid?
# false
# повышаем общую температуру
Metal.current_temp = 2100
# смотрим, кто теперь расплавился
puts aluminum.liquid? # true
puts copper.liquid?
# true
puts gold.liquid?
# true
