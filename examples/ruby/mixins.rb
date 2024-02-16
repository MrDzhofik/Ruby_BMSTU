# Механизм, позволяющий реализовать аналог
# множественного наследования
module Sum # объявляем модули Sum и Mul
  def sum
    inject { |s, element| s + element }
  end
end

module Mul
  def mul
    inject { |s, element| s * element }
  end
end

class Array # добавляем стандартному классу наши модули!
  include Sum
  include Mul
end
# вызываем новый метод для нового массива
[1, 2, 3, 4, 5].sum #=> 15
[1, 2, 3, 4, 5].mul #=> 120
