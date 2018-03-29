class CartsController < ApplicationController
  skip_before_action :authenticate_user!
  
  def add_to
    @product = Product.find(params[:product_id])
    if @cart
      @cart.products << @product
    else
      @cart = Cart.create!
      cookies[:cart_uuid] = @cart.uuid
      @cart.products << @product
    end
  end
end
