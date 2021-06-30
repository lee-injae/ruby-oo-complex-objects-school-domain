# code here!

class School 
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade) 
        roster[grade] ||= []
        roster[grade] << student_name
    end

    def grade(s_grade)
        roster[s_grade]
    end

    def sort
        sorted = {}
        roster.each do |grade, students|
            sorted[grade] = students.sort 
        end
        sorted
    end
end

school = School.new("Injae School")

school.add_student("ocean", 6)
school.add_student("ev", 6)
school.add_student("livi", 5)
school.add_student("ace", 5)
p school.grade(6)
puts school.roster
puts school.sort
