json.array!(@testimonies) do |testimony|
  json.extract! testimony, :id, :content, :name
  json.url testimony_url(testimony, format: :json)
end
