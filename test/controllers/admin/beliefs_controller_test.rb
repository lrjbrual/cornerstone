require 'test_helper'

class Admin::BeliefsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_beliefs_index_url
    assert_response :success
  end

end
