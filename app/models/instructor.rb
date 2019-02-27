class Instructor

attr_reader :name
@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def pass_student(student, test_name)
  return_test = 0
  BoatingTest.all.each do |test|
    if test.student == student && test.name == test_name
      test.status = "passed"
      return_test = test
    else
      return_test = student.add_boating_test(test_name, "passed", self)
    end
  end
  return_test
end

def fail_student(student, test_name)
  return_test = 0
  BoatingTest.all.each do |test|
    if test.student == student && test.name == test_name
      test.status = "failed"
      return_test = test
    else
      return_test = student.add_boating_test(test_name, "failed", self)
    end
  end
  return_test
end

def self.all
  @@all
end

end
