class ChargesController < ApplicationController
  skip_before_action :authenticate_user!

  def new
  end

def create
  @order = Order.find(params[:order_id])
  @amount = (@order.cart.cart_value * 100).to_i

  customer = Stripe::Customer.create(
    :email => @order.email,
    :source  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Order number: ' + @order.id.to_s,
    :currency    => 'aud'
  )
  puts charge.to_s

  if charge[:paid] == true
    @order.update(paid: true, amount_paid: @order.cart.cart_value)
    # TODO Find out way to delete cart
    # Cart.find(@order.cart_id).destroy
    # TODO find out why cookie is not deleting
    cookies.delete :cart_uuid
    # TODO send emails to buyer and seller
  end

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to order_path(@order)
  end
end
