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

			before{
			  @category_count = Category.count
				get :new
		    post :create, category: attributes_for(:clothes)
			}

			it "Add it" do
			  expect(Category.count).to eq(@category_count + 1)
			end

			it "Redirect to home" do
			  expect(subject).to redirect_to :root
			end

			it "View flas message 'create category success'" do
			  expect(flash[:notice]).to include "create category success"
			end
		end

		describe "PUT #update" do

			let(:att_update) do
        {name: "new name", description: "new description"}
			end

			let(:category){
				create(:clothes)
			}

			before {
				@prev_updated_at = category.updated_at
				put :update, id: category.id, category: att_update
		 	  category.reload
			}

			it "Update the right attributes" do
				expect(category.name).to eq(att_update[:name])
				expect(category.description).to eq(att_update[:description])
			end

			it "Redirect tocategory show" do
				expect(response).to redirect_to category
			end

			it "Has different update time" do
				expect(category.updated_at).to be > @prev_updated_at
			end
		end

		describe "DELETE #destroy" do
		end
  end

end


# describe "PUT 'update/:id'" do
#   it "allows an article to be updated" do
#     prev_updated_at = @article.updated_at
#     @attr = { :title => "new title", :content => "new content" }
#     put :update, :id => @article.id, :article => @attr
#     @article.reload
#     @article.updated_at.should != prev_updated_at 
#   end
# end