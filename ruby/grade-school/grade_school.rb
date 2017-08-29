require 'pry'

class School
  def initialize
    @students = {}
  end

  def students(grade)
    names = @students[grade] || []
    names.sort
  end

  def add(name, grade)
    @students[grade] ||= []
    @students[grade] << name
  end

  def students_by_grade
    registry = []
    return registry if @students.empty?

    @students.keys.sort.each do |grade|
      students = {}
      students[:grade] = grade
      students[:students] = @students[grade].sort
      registry.push(students)
    end
    return registry
  end
end

# quality solution from cmccandless, for study later!
# class School
#   def initialize
#     @roster = Hash.new([])
#   end
#   def students(grade)
#     @roster[grade]
#   end
#   def add(name, grade)
#     @roster[grade] = Array.new(@roster[grade]).push(name).sort
#   end
#   def students_by_grade
#     @roster.sort.collect { |g,s| {:grade => g, :students => s } }
#   end
# end
