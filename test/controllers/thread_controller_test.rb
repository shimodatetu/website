require 'test_helper'

class ThreadControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get thread_show_url
    assert_response :success
  end

end
