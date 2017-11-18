require 'test_helper'

class DasboardControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get dasboard_home_url
    assert_response :success
  end

  test "should get help" do
    get dasboard_help_url
    assert_response :success
  end

end
