json.array!(@user_has_products) do |user_has_product|
  json.extract! user_has_product, :id, :platform, :service, :tier
  json.url user_has_product_url(user_has_product, format: :json)
end
