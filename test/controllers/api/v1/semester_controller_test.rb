require 'test_helper'

class Api::V1::SemesterControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get api_v1_semester_name:string_url
    assert_response :success
  end

  test "should get credits:string" do
    get api_v1_semester_credits:string_url
    assert_response :success
  end

  test "should get start_date:date" do
    get api_v1_semester_start_date:date_url
    assert_response :success
  end

  test "should get end_date:date" do
    get api_v1_semester_end_date:date_url
    assert_response :success
  end

end
