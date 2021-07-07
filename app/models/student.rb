class Student

attr_reader :first_name
@@all = []

def initialize(first_name)
  @first_name = first_name
  @@all << self
end

def add_boating_test(test_name, status, instructor)
  BoatingTest.new(self, test_name, status, instructor)
end

def grade_percentage

end 

def self.find_student(name)
  Student.all.select {|student| student.first_name == name}
end

def self.all
  @@all
end

end
