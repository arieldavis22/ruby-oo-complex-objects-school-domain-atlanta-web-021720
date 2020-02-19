# code here!
require 'pry'
class School 
    
    attr_accessor :roster
    def initialize(name,roster={})
        @name = name
        @roster = roster
    end

    def add_student(name, grade)
        if !@roster[grade]
            @roster[grade] = []
            @roster[grade] << name
        else
            @roster[grade] << name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.map do |k, v|
            v.sort!
        end
        @roster
    end
end