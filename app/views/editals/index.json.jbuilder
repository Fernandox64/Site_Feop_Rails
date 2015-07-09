json.array!(@editals) do |edital|
  json.extract! edital, :id, :name, :date, :descricao
  json.url edital_url(edital, format: :json)
end
