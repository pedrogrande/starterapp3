class CartsController < ApplicationController
  skip_before_action :authenticate_user!

  def remove_from
    product = Product.find(params[:product_id])
    @cart_product = CartProduct.find_by(cart_id: @cart.id, product_id: product.id)
    @cart.products.delete(product)
    if @cart.products.count == 0
      @cart.destroy
      @cart_destroyed = true
    end
  end

  def add_to
    @product = Product.find(params[:product_id])
    unless @cart
      @cart = Cart.create!
      cookies[:cart_uuid] = @cart.uuid
    end
    if @cart.products.include?(@product)
      cart_product = CartProduct.find_by(cart_id: @cart.id, product_id: @product.id)
      cart_product.increment_num
    else
      @cart.products << @product
    end
  end

  def show
  end
end
