json.array!(@articles) do |article|
  json.extract! article, :id, :title, :author, :image_link
  json.url article_url(article, format: :json)
end
