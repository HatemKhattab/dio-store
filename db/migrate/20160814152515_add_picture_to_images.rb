class AddPictureToImages < ActiveRecord::Migration
  def up
  	add_attachment :images, :picture
  end

  def down
  	remove_attachment :images, :picture
  end
end
