require 'pry'

class School

  attr_accessor :school_name, :roster, :student_name, :grade

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    @student_name = student_name
    @grade = grade
      if !@roster[grade]
        @roster[grade] = []
        @roster[grade] << student_name
      else
        @roster[grade] << student_name
      end
   end

  def grade(grade)
    @roster = roster
    @roster.select { |k, v| if k == grade ; return v end }
  end

  def sort
    # # @roster.sort_by { |grade, name| grade }.to_h
    # # @roster.select { |grade, name| name.sort }.to_h
    @roster.each_value { |v| v.sort! }
  end

end

# if the grade is not already in roster,
# create the array to put grade and student into
#
# if the grade has been added already exists,
# just push the student into the array

p sc1 = School.new("Bayside")
sc1.add_student("Mike", 8)
sc1.add_student("Dave", 9)
sc1.add_student("Bill", 9)

p sc1.roster


p sc1.grade(9)

p sc1.sort
