# code here!
class School

    attr_accessor :roster 
    attr_reader :school

    def initialize(school)
        @school = school   
        @roster = {}
    end

    def add_student(name, grade)
        if !roster[grade]
        @roster[grade] = [name]
        else
            roster[grade] << name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_list = {}
        @roster.sort.to_h.each { |key, value| sorted_list[key] = value.sort }
        sorted_list
    end
end