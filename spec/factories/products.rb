# create_table "products", force: :cascade do |t|
#     t.string   "title"
#     t.text     "description"
#     t.decimal  "price",       precision: 8, scale: 2
#     t.string   "category"
#     t.string   "subcategory"
#     t.datetime "created_at",                          null: false
#     t.datetime "updated_at",                          null: false
#     t.integer  "category_id"
#   end
require 'rails_helper'

FactoryGirl.define do

	factory :iphone7, class: :Product do
		title "iphone 7"
		price 1200.00
		association :category, factory: :electric
	end

	factory :tshirt, class: :Product do
		title "addidas"
		price 49.99
	end

end