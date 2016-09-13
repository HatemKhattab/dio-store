class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  
  def index
    @product = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  
  def edit
  end

  def create
    @product = Product.new(product_params)
      if @product.save
        if params[:files]
          params[:files].each {|pic|
            @product.images.create(picture: pic)
          }
        end

        redirect_to @product, notice: 'Product was successfully created.' 
      else
        render :new
      end
  end

  def update
      if @product.update(product_params)
        if params[:files]
          params[:files].each {|pic|
            @product.images.create(picture: pic)
          }
        end
        redirect_to @product, notice: 'Product was successfully updated.' 
      else
        render :edit 
      end
  end


  def destroy
    @product.destroy
      redirect_to products_url, notice: 'Product was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:title, :description, :price, :images, :category_id)
    end
end

