class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @products = Product.all
  end

  def contact
    @enquiry = Enquiry.new
  end

  def about
  end

  def privacy
  end
end
