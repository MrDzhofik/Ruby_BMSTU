class Person
  attr_accessor :name, :age, :gender

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end
  # ...
end

# Только одиночное наследование!
class Student < Person
  attr_accessor :idnum, :hours

  def initialize(name, age, gender, idnum, hours)
    super(name, age, gender)
    @idnum = idnum
    @hours = hours
  end
  # ...
end
