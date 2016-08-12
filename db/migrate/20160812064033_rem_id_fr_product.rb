class RemIdFrProduct < ActiveRecord::Migration
  def change
  	remove_column :products, :image_id
  end
end
