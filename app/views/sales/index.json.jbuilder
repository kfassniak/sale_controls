json.array!(@sales) do |sale|
  json.extract! sale, :id, :customer_name, :string,, :merchant_address,, :merchant_name
  json.url sale_url(sale, format: :json)
end
