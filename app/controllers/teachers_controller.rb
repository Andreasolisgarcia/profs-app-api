class TeachersController < ApplicationController

# GET /teachers
def index
    teacher_role = Role.find_by(role: "Teacher")
    @tutors = teacher_role.users
  
    render json: @tutors
  end

  # GET /teachers/1
  def show
    @teacher = User.find(params[:id])

    if @teacher.has_role?('Teacher')
      render json: @teacher
    else
      render json: { error: "User is not a teacher" }, status: :unprocessable_entity
    end
  end
end
