require 'test_helper'

class FaithControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get faith_index_url
    assert_response :success
  end

end
