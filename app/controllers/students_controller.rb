class StudentsController < ApplicationController
    def index 
        render json: Student.all
    end

    def grades
        render json: Student.all.sort_by(&:grade).reverse
    end

    def highest_grade
        render json: Student.all.max_by(&:grade)
    end
end
