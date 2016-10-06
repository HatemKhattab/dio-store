
require 'rails_helper'
require 'spec_heper'

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
 
    # it 'shows all products' do
    # 	let(:tv) { Factory.Girl.create :tv }
    # end
	end
 
end