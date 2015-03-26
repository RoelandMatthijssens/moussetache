json.array!(@category_pages) do |category_page|
  json.extract! category_page, :id, :name, :image
  json.url category_page_url(category_page, format: :json)
end
