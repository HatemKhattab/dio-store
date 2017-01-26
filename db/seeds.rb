# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#-------------------------------------------------------------------------



#   create_table "images", force: :cascade do |t|
#     t.datetime "created_at",           null: false
#     t.datetime "updated_at",           null: false
#     t.integer  "product_id"
#     t.string   "picture_file_name"
#     t.string   "picture_content_type"
#     t.integer  "picture_file_size"
#     t.datetime "picture_updated_at"
#   end

#   add_index "images", ["product_id"], name: "index_images_on_product_id"

#   create_table "products", force: :cascade do |t|
#     t.string   "title"
#     t.text     "description"
#     t.decimal  "price",       precision: 8, scale: 2
#     t.string   "category"
#     t.string   "subcategory"
#     t.datetime "created_at",                          null: false
#     t.datetime "updated_at",                          null: false
#     t.integer  "category_id"
#     t.string   "quantity"
#     t.string   "articlenr"
#   end


# Image.create({
#   :id => 52, 
#   :asset => File.new("#{Rails.root}/path/to/somefile.jpg"),
#   :product_id => 52
# })

category_list = [
	['Clothes', 'clothes description'],
	['Electronics', 'electronics description'],
	['Home', 'home description']
]

product_list = [
	['Iphone 7', 300, 13],
  ['Hugo Buss', 250, 12]
]

category_list.each do |name, description|
  Category.create(name: name, description: description)
end

product_list.each do |tit, pri, quan|
  Product.create(title: tit, price: pri, quantity: quan )
end

Image.create({picture: File.new("#{Rails.root}/images/iphone.jpg"), product_id: Product.first.id})








