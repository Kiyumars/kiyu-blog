require 'test_helper'

class PostTest < ActiveSupport::TestCase
	test "reject post wit blank title" do
		assert_no_difference "Post.count" do
			Post.create(title: "", content: "Lorem Ipsum Est")
		end
	end

	test "reject post with blank content" do
		assert_no_difference "Post.count" do
			Post.create(title: "title", content: "")
		end
	end
end
