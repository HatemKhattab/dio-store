  # create_table "categories", force: :cascade do |t|
  #   t.string   "name"
  #   t.text     "description"
  #   t.datetime "created_at"
  #   t.datetime "updated_at"
  # end

FactoryGirl.define do

	factory :electronics, class: :Category, aliases: [:elecs] do
		name "electronics"
		description "any text"
	end

	factory :clothes, class: :Category do
		name "clothes"
		description "any text"
	end

	factory :mobler, class: :Category do
		description "any text"
	end

end
