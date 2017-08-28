class Array
  def accumulate

  end

end

class TestTest
  def my_method
    puts "reached top"
    yield
    puts "reached bottom"
  end

  my_method do
    puts "reached yield"
  end

end

this = TestTest.new
this.my_method
