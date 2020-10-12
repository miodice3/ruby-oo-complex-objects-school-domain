require 'pry'

class School

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        @name = name
        @grade = grade
        # binding.pry
            if @roster.key?(grade) == false
                @roster[grade] = []
                @roster[grade] << name
            else
                @roster[grade] << name
            end
    end

    def roster
        @roster
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_hash = {}
        @roster.each do |grade_number, grade_names|
            sorted_hash[grade_number] = []
            sorted_hash[grade_number] = grade_names.sort #.flatten(1)
        end
        return sorted_hash
    end

end

# Weston = School.new("HS")
# Weston.roster
# # Weston.add_student("babble in 9th grade",9)
# # Weston.add_student("anana in 9th grade",9)
# # Weston.add_student("zlex",12)
# # Weston.add_student("oarry",12)
# Weston.add_student("Homer Simpson", 9)
# Weston.add_student("Bart Simpson", 9)
# Weston.add_student("Avi Flombaum", 10)
# Weston.add_student("Jeff Baird", 10)
# Weston.add_student("Blake Johnson", 7)
# Weston.add_student("Jack Bauer", 7)
# Weston.roster
# Weston.sort
