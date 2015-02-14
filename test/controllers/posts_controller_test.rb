require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  test "get home page" do
	  get :home
	  assert_response :success
	end

	test "get inde page" do
		get :index
		assert_response :success
	end
end
