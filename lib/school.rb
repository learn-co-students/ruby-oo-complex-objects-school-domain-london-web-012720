class School

    attr_accessor :roster, :student, :grade

    def initialize(sn)
        @sn = sn
        @roster = {}
    end

    def add_student(student,grade)
        if roster.key? (grade)
            roster[grade] << student
        else
            roster[grade] = [student]
        end
    end

        def grade(g)
        return roster[g]
        end

        def sort
            arr = {}
            roster.each do |k,v| 
                arr[k] = v.sort  
             end
            arr
        end
end