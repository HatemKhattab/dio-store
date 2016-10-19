require 'rails_helper'

RSpec.describe ProductsController, type: :controller  do

	describe 'Get #index' do
    it 'response successfully' do
	    get :index
	    expect(response).to be_success
    end

    it 'renders with index template' do
      get :index
      expect(response).to render_template("index")
    end

    it 'display all the products' do
    	create(:iphone7)
    	create(:tshirt)
    	expect(Product.count).to eq(2)
    end
	end

	describe 'Get #show' do

		before do
			phone = create(:iphone7)
			get :show, id: phone.id
	  end

		it 'success' do
			expect(response).to be_success
	  end

	  it 'redirect to the right product' do
	  	expect(response).to render_template :show
	  end
	end

	describe 'Post #create' do

		before {
			@product_count = Product.count
			iphone_params = attributes_for(:iphone7)
		  post :create, product: iphone_params
	  }

		it 'increase Product by 1' do
		  expect(Product.count).to eq(@product_count + 1)
		end
  end

end 



# it "creates article" do 
#   article_params = FactoryGirl.attributes_for(:article)
#   expect { post :create, :article => article_params }.to change(Article, :count).by(1) 
# end