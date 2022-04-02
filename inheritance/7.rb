class Student
  attr_reader :name

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other)
    self.grade > other.grade
  end

  protected

  def grade
    @grade
  end

end

s1 = Student.new('a', 90)
s2 = Student.new('b', 88)
puts "Well done" if s1.better_grade_than?(s2)
s1.grade