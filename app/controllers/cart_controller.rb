class CartController < ApplicationController
#before_action :authenticate_user!, except: [:index]

  def add
    id = params[:id]
 	  cart[id] ? cart[id] = cart[id]+1 : cart[id]=1
	  redirect_to :action => :index
  end

  def clearCart
    session[:cart] = nil
    redirect_to :action => :index
  end

  def index
  	@cart = cart
  end

private

  def cart  
     session[:cart] ||= {}
  end

 
end