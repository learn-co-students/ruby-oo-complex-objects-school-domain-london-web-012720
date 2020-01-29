# code here!
require "pry"
class School
    attr_accessor :roster
    def initialize(name)
        @name = name
        @roster = {}   
    end

    def add_student(name, grade)
        if self.roster[grade]
            self.roster[grade].push(name)
        else
            self.roster[grade] = []
            self.roster[grade].push(name)
        end
    end

    def grade(grade_to_return)
        self.roster[grade_to_return]
    end

    def sort
        self.roster.each_key do |key|
            self.roster[key].sort!
        end
    end

end

  