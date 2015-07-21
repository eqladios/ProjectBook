json.array!(@items) do |item|
  json.extract! item, :title, :isbn, :authors, :publisher, :average_rating, :image_link
  json.url item_url(item, format: :json)
end
