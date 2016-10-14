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

		before {
			phone = create(:iphone7)
			get :show, id: phone.id
		}

		it 'success' do
			expect(response).to be_success
	  end

	  it 'redirect to the right product' do
	  	expect(response).to render_template :show
	  end

	end

end