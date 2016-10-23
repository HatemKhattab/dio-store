require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
	context "With invalid attributes" do
    category_count = Category.count
		subject{ post :create, category: attributes_for(:mobler) }

		it "Not create it" do
			expect(Category.count).to eq(category_count)
		end
		it "render new template" do
			expect(subject).to render_template :new
		end
	end
	context "With valid attributes" do
		describe "POST #create" do
		end
		describe "PUT #update" do
		end
		describe "DELETE #destroy" do
		end
  end

end