class AddArticleNumberToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :articlenr, :string
  end
end
