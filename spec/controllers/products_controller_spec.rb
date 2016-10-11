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

    it 'should success' do
      attrs = attributes_for(:sony)
      expect(attrs.length).to eq(2)
    end
	end

end 