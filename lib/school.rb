class School
    def initialize (school)
        @school = school
        @roster = {}
    end

    attr_accessor :roster, :student, :grade
    attr_reader :school

    def add_student (student, grade)
         if roster.key?(grade)
            roster[grade] << student
         else
            roster[grade] = [student]
         end
    end

    def grade (grade)
        if roster.key?(grade)
            return roster[grade]
        end
    end

    def sort
        new_hash = {}
        roster.each do |grade, students| 
            new_hash[grade] = students.sort
        end
        new_hash
    end
end


