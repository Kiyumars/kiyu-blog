require 'test_helper'

class AdminActionsTest < ActionDispatch::IntegrationTest
	test "create new post" do
		assert_difference "Post.create", 1 do
			post admin_posts_path, post: { title: "Hello World", content: "Lorem Ipsum Est" }
		end
	end
end
