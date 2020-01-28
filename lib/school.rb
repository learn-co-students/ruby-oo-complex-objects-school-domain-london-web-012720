# code here!
require 'pry'
class School
    attr_accessor :school, :roster 

    def initialize(school)
        @school = school
        @roster = {}
    end 

    def add_student(student_name, grade)
       roster[grade] ||= [] 
       roster[grade] << student_name 
    end 

    def grade(grade)
        roster[grade]
    end 

    def sort 
        sorted = {}
        roster.each do |grade, students|
            sorted[grade] = students.sort 
        end 
        sorted
    end 

end 

