require 'test_helper'

class SubcoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subcourse = subcourses(:one)
  end

  test "should get index" do
    get subcourses_url
    assert_response :success
  end

  test "should get new" do
    get new_subcourse_url
    assert_response :success
  end

  test "should create subcourse" do
    assert_difference('Subcourse.count') do
      post subcourses_url, params: { subcourse: {  } }
    end

    assert_redirected_to subcourse_url(Subcourse.last)
  end

  test "should show subcourse" do
    get subcourse_url(@subcourse)
    assert_response :success
  end

  test "should get edit" do
    get edit_subcourse_url(@subcourse)
    assert_response :success
  end

  test "should update subcourse" do
    patch subcourse_url(@subcourse), params: { subcourse: {  } }
    assert_redirected_to subcourse_url(@subcourse)
  end

  test "should destroy subcourse" do
    assert_difference('Subcourse.count', -1) do
      delete subcourse_url(@subcourse)
    end

    assert_redirected_to subcourses_url
  end
end
