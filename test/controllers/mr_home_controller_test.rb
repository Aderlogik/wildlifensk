require 'test_helper'

class MrHomeControllerTest < ActionController::TestCase
  test "should get mr_home" do
    get :mr_home
    assert_response :success
  end

end
