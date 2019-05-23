class School
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  attr_reader :roster, :name
  
  def add_student(name, grade)
    @roster.key?(grade) ? @roster[grade] << name : @roster[grade] = [name]
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each do |grade, names|
      names.sort
  end
  
end