Student = Struct.new(:name, :group)
stud = Student.new('Иванов И.И.', 'ИУ6-11')
puts Student.class
# -> Class
puts stud.class
# -> Student
puts "Студент: #{stud.name}\tГруппа: #{stud.group}"
#->Студент: Иванов И.И. Группа: ИУ6-11
