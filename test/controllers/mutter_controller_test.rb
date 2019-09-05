require 'test_helper'

class MutterControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mutter_index_url
    assert_response :success
  end

end
