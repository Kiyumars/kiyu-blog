require 'test_helper'

class PostTest < ActiveSupport::TestCase
	test "reject post without title" do
		assert_no_difference "Post.count" do
			Post.create(title: "", content: "Lorem Ipsum Est")
		end
	end
end
