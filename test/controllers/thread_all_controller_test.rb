require 'test_helper'

class ThreadAllControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get thread_all_show_url
    assert_response :success
  end

end
