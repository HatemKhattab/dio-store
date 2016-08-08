class DelCat < ActiveRecord::Migration
  def change
  	remove_column :products, :category, :subcategory
  end
end
