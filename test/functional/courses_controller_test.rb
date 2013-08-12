require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post :create, course: { capacity: @course.capacity, cycle: @course.cycle, duration: @course.duration, form: @course.form, frequency: @course.frequency, join_class: @course.join_class, kind: @course.kind, make_value: @course.make_value, mic: @course.mic, projector: @course.projector, remark: @course.remark, section_size: @course.section_size, sound: @course.sound, title: @course.title, video_makeup: @course.video_makeup }
    end

    assert_redirected_to course_path(assigns(:course))
  end

  test "should show course" do
    get :show, id: @course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course
    assert_response :success
  end

  test "should update course" do
    put :update, id: @course, course: { capacity: @course.capacity, cycle: @course.cycle, duration: @course.duration, form: @course.form, frequency: @course.frequency, join_class: @course.join_class, kind: @course.kind, make_value: @course.make_value, mic: @course.mic, projector: @course.projector, remark: @course.remark, section_size: @course.section_size, sound: @course.sound, title: @course.title, video_makeup: @course.video_makeup }
    assert_redirected_to course_path(assigns(:course))
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete :destroy, id: @course
    end

    assert_redirected_to courses_path
  end
end
