require "test_helper"

class CartCoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cart_course = cart_courses(:one)
  end

  test "should get index" do
    get cart_courses_url, as: :json
    assert_response :success
  end

  test "should create cart_course" do
    assert_difference("CartCourse.count") do
      post cart_courses_url, params: { cart_course: { cart_id: @cart_course.cart_id, course_id: @cart_course.course_id } }, as: :json
    end

    assert_response :created
  end

  test "should show cart_course" do
    get cart_course_url(@cart_course), as: :json
    assert_response :success
  end

  test "should update cart_course" do
    patch cart_course_url(@cart_course), params: { cart_course: { cart_id: @cart_course.cart_id, course_id: @cart_course.course_id } }, as: :json
    assert_response :success
  end

  test "should destroy cart_course" do
    assert_difference("CartCourse.count", -1) do
      delete cart_course_url(@cart_course), as: :json
    end

    assert_response :no_content
  end
end
