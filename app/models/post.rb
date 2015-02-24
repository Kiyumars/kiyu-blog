class Post < ActiveRecord::Base
	validates :title, presence: true, allow_blank: false, length: { maximum: 255, message: "Title is too long" }
	validates :content, presence: true, allow_blank: false

end
