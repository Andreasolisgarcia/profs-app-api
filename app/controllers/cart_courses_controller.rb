class CartCoursesController < ApplicationController
  before_action :set_cart_course, only: %i[ show update destroy ]

  # GET /cart_courses
  def index
    @cart_courses = CartCourse.all

    render json: @cart_courses
  end

  # GET /cart_courses/1
  def show
    render json: @cart_course
  end

  # POST /cart_courses
  def create
    @cart_course = CartCourse.new(cart_course_params)

    if @cart_course.save
      render json: @cart_course, status: :created, location: @cart_course
    else
      render json: @cart_course.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cart_courses/1
  def update
    if @cart_course.update(cart_course_params)
      render json: @cart_course
    else
      render json: @cart_course.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cart_courses/1
  def destroy
    @cart_course.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart_course
      @cart_course = CartCourse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cart_course_params
      params.require(:cart_course).permit(:cart_id, :course_id)
    end
end
