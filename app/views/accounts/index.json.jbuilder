json.array!(@accounts) do |account|
  json.extract! account, :id, :title, :isbn, :authors, :publisher, :average_rating, :image_link, :categories
  json.url account_url(account, format: :json)
end
