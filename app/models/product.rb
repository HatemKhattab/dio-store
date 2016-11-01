class Product < ActiveRecord::Base
	has_many :images, dependent: :destroy
	belongs_to :category
	
	validates :title, presence: true
	validates :price, presence: true, numericality: {:greater_than => 0, :less_than => 10000}
    validates :images, :length => {:maximum => 9}
    validates :quantity, numericality: { greate_than_or_equal_to: 0, less_than: 1000 }
end