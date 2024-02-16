# Разграничивают пространство имён
# Обеспечивают возможность использование примесей
# Не может иметь экземпляры!
# Может содержать методы, константы и классы
# Не имеет наследования
module Mod
  include Math
  CONST = 1
  def meth
  # ...
  end
end
puts Mod.class
puts Mod.constants
puts Mod.instance_methods
puts Mod.const_get(:PI)
# => Module
# => [:CONST, :PI, :E]
# => [:meth]
# => 3.141592653589793