require 'test_helper'

class PostTest < ActiveSupport::TestCase
	test "reject post with blank title" do
		assert_no_difference "Post.count" do
			Post.create(title: "", content: "Lorem Ipsum Est")
		end
	end

	test "reject post with blank content" do
		assert_no_difference "Post.count" do
			Post.create(title: "title", content: "")
		end
	end

	test "submit valid post" do
		assert_difference "Post.count", 1 do
			Post.create(title: "title", content: "Lorem Ipsum Est")
		end
	end
end
