json.array!(@products) do |product|
  json.extract! product, :id, :title, :descricao
  json.url product_url(product, format: :json)
end
