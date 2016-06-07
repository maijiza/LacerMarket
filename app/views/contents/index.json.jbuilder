json.array!(@contents) do |content|
  json.extract! content, :id, :titolo, :decrizione, :price
  json.url content_url(content, format: :json)
end
