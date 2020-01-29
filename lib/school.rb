require "pry"
class School

    attr_accessor :name, :grade, :student_name, :roster

    def initialize(name)
        @name = name
        @roster =  {}
   
    end


    def add_student(student_name, grade)

        if @roster.key?(grade)
            @roster[grade] << student_name
          else
            @roster[grade] = []
            @roster[grade] << student_name
          end
        end


        def grade(grade)
            @roster[grade]
          end

          
            def sort 
                new_hash = {}
                roster.each do |keys, array| 
                  new_hash[keys] = array.sort 
                end 
               new_hash
              end 

         
end



