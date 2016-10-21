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

		context "With valid attributes" do
			before {
				@product_count = Product.count
				iphone_params = attributes_for(:iphone7)
			  post :create, product: iphone_params
		  }

			it 'increase Product by 1' do
			  expect(Product.count).to eq(@product_count + 1)
			end

			it 'redirect to show ' do
				expect(response).to redirect_to Product.last
			end

			it'render flash message "Product was successfully created"' do
				expect(flash[:notice]).to include "Product was successfully created"
			end
	  end

	  context "With invalid attributes" do
      product_count = Product.count
	  	subject {post :create, product: attributes_for(:samsung)}

	  	it 'dont add the product' do 
	  		expect(Product.count).to eq(product_count) 
	  	end

	  	it 'render new again' do
	  		expect(subject).to render_template :new
	  	end
	  end
  end

end 

