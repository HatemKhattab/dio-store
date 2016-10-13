  # create_table "categories", force: :cascade do |t|
  #   t.string   "name"
  #   t.text     "description"
  #   t.datetime "created_at"
  #   t.datetime "updated_at"
  # end
  require 'rails_helper'

FactoryGirl.define do

	factory :electric, class: :Category, aliases: [:elecs] do
		name "electronics"
		description "any text"
	end

	factory :cloth, class: :Category do
		name "clothes"
		description "any text"
	end

end
