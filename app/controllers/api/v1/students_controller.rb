class Api::V1::StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  
  # GET http://localhost:3000/api/v1/students
  def index
    @students = Student.all
    render json: @students
  end

  # GET http://localhost:3000/api/v1/students/1
  def show
    render json: @student
  end

  def new
    @student = Student.new
  end

  def edit
  end

  # # PUT http://localhost:3000/api/v1/students?student[name]=student_name&student[age]=1&student[bod]=2019-01-01&semester_id=1
  def create
    @student = Student.new(student_params)
    if @student.save
      render json: @student 
    else
      render json: @student.errors, status: :unprocessable_entity 
    end
  end

  # PATCH http://localhost:3000/api/v1/students/3?student[name]=student_new_name
  def update
    if @student.update(student_params)
      render json: @student 
    else
      render json: @student.errors, status: :unprocessable_entity 
    end
  end

  # DELETE http://localhost:3000/api/v1/students/2
  def destroy
    @student.destroy
    head :no_content
  end

  private
    def set_student
      @student = Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:name,:age,:bod,:description,:semester_id)
    end
end
