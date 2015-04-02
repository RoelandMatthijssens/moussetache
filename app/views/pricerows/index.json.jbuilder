json.array!(@pricerows) do |pricerow|
  json.extract! pricerow, :id, :value, :affix, :product_id
  json.url pricerow_url(pricerow, format: :json)
end
