require 'test_helper'

class VboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vboards_index_url
    assert_response :success
  end

end
