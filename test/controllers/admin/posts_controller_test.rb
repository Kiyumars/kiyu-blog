require 'test_helper'

class Admin::PostsControllerTest < ActionController::TestCase

  test "get new post" do
  	get :new
  	assert_response :success
  end

end
