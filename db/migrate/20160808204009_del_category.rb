class DelCategory < ActiveRecord::Migration
  def change
  	remove_column :products, :category 
  	remove_column :products, :subcategory
  end
end
