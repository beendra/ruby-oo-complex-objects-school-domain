class School

    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(students_name, grade)
        roster[grade] ||= []
        roster[grade] << students_name
    end

    def grade(students_grade)
        roster[students_grade]
    end


end

@school = School.new("JHS")

school.add_student("Alex", 12)
school.roster