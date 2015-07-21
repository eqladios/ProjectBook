json.array!(@infobooks) do |infobook|
  json.extract! infobook, :id, :title, :isbn, :author, :publisher, :rating, :descripton, :image_link
  json.url infobook_url(infobook, format: :json)
end
