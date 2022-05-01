class StudentsController < ApplicationController
    def index
        students = Student.all 
        render json: students 
    end
    def grades
        sorted = Student.all.sort_by { |student| [student.grade] }
        render json: sorted.reverse
    end
end
