require 'test_helper'

class ReacOutControllerTest < ActionController::TestCase
  test "should get Login" do
    get :Login
    assert_response :success
  end

  test "should get Home" do
    get :Home
    assert_response :success
  end

  test "should get Charity" do
    get :Charity
    assert_response :success
  end

  test "should get DiscussionThread" do
    get :DiscussionThread
    assert_response :success
  end

end
