class Instructor

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(student_inst, test_name)
    test = BoatingTest.all.find do |inst|
      inst.student == student_inst && inst.test_name == test.name
    end
    if test
      test.test_status = 'passed'
    else
      test = BoatingTest.new(test_status: 'passed', student: student_inst, test_name: test_name, instructor: self)
    end
    test
  end

  def fail_student(student_inst, test_name)
    test = BoatingTest.all.find do |inst|
      inst.student == student_inst && inst.test_name == test.name
    end
    if test
      test.test_status = 'failed'
    else
      test = BoatingTest.new(test_status: 'failed', student: student_inst, test_name: test_name, instructor: self)
    end
    test
  end

end
