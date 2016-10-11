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

	factory :sony, class: :Product do
		title "sony tv"
		price 20.00
	end

end