require 'test_helper'

class PublicWinesControllerTest < ActionController::TestCase
  test "should get discover" do
    get :discover
    assert_response :success
  end

end
