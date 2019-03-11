class Student

  attr_reader :name

  @@all = []

  def initialize(first_name)
    @name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(name, status, instructor)
    BoatingTest.new(test_name: name, student: self, test_status: status, instructor: instructor)
  end

  def self.find_student(first_name)
    @@all.find do |inst|
      inst.name == first_name
    end
  end

  def grade_percentage
    tests = BoatingTest.all.select {|test| test.student == self}
    total_tests = tests.count
    passed_tests = tests.select {|test| test.test_status == 'passed'}
    total_passed = passed_tests.count
    total_passed.to_f / total_tests.to_f
  end

end
