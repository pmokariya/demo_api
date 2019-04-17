class Api::V1::SemestersController < ApplicationController
	before_action :set_semester, only: [:show, :edit, :update, :destroy]

  # GET http://localhost:3000/api/v1/semesters
  def index
    @semesters = Semester.all
    render json: @semesters
  end

  # GET http://localhost:3000/api/v1/semesters/1
  def show
  	render json: @semester
  end

  def new
    @semester = Semester.new
  end

  def edit
  end

  # PUT http://localhost:3000/api/v1/semesters?semester[name]=student semester&semester[credits]=1&semester[start_date]=2019-01-19&semester[end_date]=2019-06-19
  def create
    @semester = Semester.new(semester_params)
    if @semester.save
    	render json: @semester 
  	else
    	render json: @semester.errors, status: :unprocessable_entity 
  	end
  end

  # PATCH http://localhost:3000/api/v1/semesters/2?semester[name]=student semester
  def update
    if @semester.update(semester_params)
     	render json: @semester 
  	else
    	render json: @semester.errors, status: :unprocessable_entity 
  	end
  end

  # DELETE http://localhost:3000/api/v1/semesters/2
  def destroy
    @semester.destroy
    head :no_content
  end

  private
    def set_semester
      @semester = Semester.find(params[:id])
    end

    def semester_params
      params.require(:semester).permit(:name, :credits, :start_date, :end_date)
    end
end
