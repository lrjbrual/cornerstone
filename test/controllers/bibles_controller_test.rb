require 'test_helper'

class BiblesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bibles_index_url
    assert_response :success
  end

end
