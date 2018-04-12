json.extract! order, :id, :name, :email, :address, :suburb, :state, :postcode, :country, :phone, :paid, :cart_id, :created_at, :updated_at
json.url order_url(order, format: :json)
