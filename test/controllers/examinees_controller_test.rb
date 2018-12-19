require 'test_helper'

class ExamineesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @examinee = examinees(:one)
  end

  test "should get index" do
    get examinees_url
    assert_response :success
  end

  test "should get new" do
    get new_examinee_url
    assert_response :success
  end

  test "should create examinee" do
    assert_difference('Examinee.count') do
      post examinees_url, params: { examinee: {  } }
    end

    assert_redirected_to examinee_url(Examinee.last)
  end

  test "should show examinee" do
    get examinee_url(@examinee)
    assert_response :success
  end

  test "should get edit" do
    get edit_examinee_url(@examinee)
    assert_response :success
  end

  test "should update examinee" do
    patch examinee_url(@examinee), params: { examinee: {  } }
    assert_redirected_to examinee_url(@examinee)
  end

  test "should destroy examinee" do
    assert_difference('Examinee.count', -1) do
      delete examinee_url(@examinee)
    end

    assert_redirected_to examinees_url
  end
end
