# code here!
class School
    attr_reader :name, :roster
    
    def initialize(school_name)
        @name = school_name
        @roster = {}
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
        @roster.each do |k, v|
            v.sort!
        end
    end

end