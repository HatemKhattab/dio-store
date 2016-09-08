class AddCategory < ActiveRecord::Migration
  def change
  	create_table :categories do |t|
  		t.string :name
  		t.text :description
  	end
  end
end