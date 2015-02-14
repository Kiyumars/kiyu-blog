require 'test_helper'

class BlogsControllerTest < ActionController::TestCase

  test "get home page" do
	  get :home
	  assert_response :success
	end



end
