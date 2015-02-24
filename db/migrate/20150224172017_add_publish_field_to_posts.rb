class AddPublishFieldToPosts < ActiveRecord::Migration
  def up
  	add_column :posts, :publish, :boolean
  end

  def down
  	remove_column :posts, :publish
  end
end
