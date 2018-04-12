class CartsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :get_cart_product, only: [:increment_num, :decrement_num, :remove_from]

  def get_cart_product
    product = Product.find(params[:product_id])
    @cart_product = CartProduct.find_by(cart_id: @cart.id, product_id: product.id)
  end

  def increment_num
    @cart_product.increment_num
    
  end

  def decrement_num
    @cart_product.decrement_num
  end

  def remove_from


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
