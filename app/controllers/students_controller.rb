class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update]
  
  def index
    @students = Student.all
  end

  def show
  end

  # def edit
  # end

  # def update
  #    @student.update(params)
  # end

  def activate
    @student = Student.find(params[:id])
    if @student.active == true
      @student.active = false
      @student.save
    else
      @student.active == false
      @student.active = true
      @student.save
    end
    redirect_to student_path
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end