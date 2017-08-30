class School
  def initialize
    @registry = Hash.new([])
  end

  def students(grade)
    @registry[grade]
  end

  def add(name, grade)
    grade_registry = @registry[grade]
    if grade_registry == []
      @registry[grade] = Array.new(0, grade_registry).push(name)
    else
      @registry[grade] = Array.new(1, grade_registry).push(name).flatten.sort
    end
  end

  def students_by_grade
    @registry.sort.map {|grade, students| {grade: grade, students: students}}
  end

end

def test_bookkeeping
  assert_equal 3, BookKeeping::VERSION
end
