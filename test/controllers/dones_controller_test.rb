require 'test_helper'

class DonesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get dones_create_url
    assert_response :success
  end

end
