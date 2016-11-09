class ImagesController < ApplicationController
  before_action :set_image, only: [:destroy]

  def destroy
  	@image.destroy
  	#session[:return_to] ||= request.referer
  	#redirect_to session.delete(:return_to)
  	redirect_to :back

  end

  private
    def set_image
      @image = Image.find(params[:id])	
    end
end