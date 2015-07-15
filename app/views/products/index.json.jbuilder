json.array!(@products) do |product|
  json.extract! product, :id, :title, :isbn, :image
  json.url product_url(product, format: :json)
end
