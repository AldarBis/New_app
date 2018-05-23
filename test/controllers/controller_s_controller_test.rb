require 'test_helper'

class ControllerSControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get controller_s_home_url
    assert_response :success
  end

  test "should get help" do
    get controller_s_help_url
    assert_response :success
  end

end
