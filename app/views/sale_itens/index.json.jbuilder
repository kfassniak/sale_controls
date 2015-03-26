json.array!(@sale_itens) do |sale_iten|
  json.extract! sale_iten, :id
  json.url sale_iten_url(sale_iten, format: :json)
end
