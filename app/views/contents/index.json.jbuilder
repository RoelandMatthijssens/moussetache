json.array!(@contents) do |content|
  json.extract! content, :id, :key, :content
  json.url content_url(content, format: :json)
end
