class Product < ActiveRecord::Base
	validates :title, presence: true
	validates :price, presence: true, numericality: {:greater_than => 0, :less_than => 10000}
	
end
